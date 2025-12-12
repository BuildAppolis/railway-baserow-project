# Use the official Baserow image directly
FROM baserow/baserow:2.0.3

# Expose the default Baserow port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/api/_health/ || exit 1

# Note: Environment variables will be set at runtime by Railway
# BASEROW_PUBLIC_URL, DATABASE_URL, REDIS_URL will be provided by Railway