# Use the official Baserow image directly
FROM baserow/baserow:2.0.3

# Expose the default Baserow port
EXPOSE 80

# Note: Environment variables will be set at runtime by Railway
# BASEROW_PUBLIC_URL, DATABASE_URL, REDIS_URL will be provided by Railway
# Baserow will automatically start with the default command when used with external DB