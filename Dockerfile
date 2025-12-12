# Use the official Baserow image directly
FROM baserow/baserow:2.0.3

# Expose the default Baserow port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/api/_health/ || exit 1

# Set default environment variables for Railway
ENV BASEROW_PUBLIC_URL=${RAILWAY_PUBLIC_DOMAIN}
ENV DATABASE_URL=postgresql://baserow:${POSTGRES_PASSWORD}@${RAILWAY_PRIVATE_DOMAIN}:5432/baserow
ENV REDIS_URL=redis://:${REDIS_PASSWORD}@${RAILWAY_PRIVATE_DOMAIN}:6379/0