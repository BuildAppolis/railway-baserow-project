# Use the official Baserow image directly
FROM baserow/baserow:2.0.3

# Expose the default Baserow port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/api/_health/ || exit 1