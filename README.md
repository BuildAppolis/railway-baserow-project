# Baserow Railway Project

This is a Railway project setup for deploying Baserow with all required services.

## Services

- **Main App**: Baserow application server
- **PostgreSQL**: Database service
- **Redis**: Cache service

## Environment Variables

The following environment variables are automatically configured:

- `BASEROW_PUBLIC_URL`: Railway deployment domain
- `SECRET_KEY`: Generated secret key for security
- `DATABASE_URL`: PostgreSQL connection string
- `REDIS_URL`: Redis connection string
- `POSTGRES_PASSWORD`: PostgreSQL password
- `REDIS_PASSWORD`: Redis password

## Deployment

This project is configured to deploy on Railway with the following services:

1. **Baserow Application**: Main application
2. **PostgreSQL Database**: Data persistence
3. **Redis Cache**: Session storage and caching

## Health Check

The application includes a health check at `/api/_health/` to ensure the service is running properly.

## Access

Once deployed, Baserow will be available at the Railway-provided URL.