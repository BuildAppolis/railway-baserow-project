# Use the official Baserow image directly
FROM baserow/baserow:2.0.3

# Expose the Baserow web frontend port
EXPOSE 3000

# Set the default command to start Baserow web services
CMD ["baserow", "start"]

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000/api/_health/ || exit 1

# Note: Environment variables will be set at runtime by Railway
# BASEROW_PUBLIC_URL, DATABASE_URL, REDIS_URL will be provided by Railway