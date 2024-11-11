FROM postgres:16

# Set environment variables (same as the ones in docker-compose.yml)
ENV POSTGRES_USER=postgres
ENV PGUSER=postgres

ENV POSTGRES_DB=skymond_ocs
ENV PGDATABASE=skymond_ocs

# Copy your SQL dump file into the container
COPY users.sql /docker-entrypoint-initdb.d/dump.sql

# Add a custom script to ensure the database is restored on startup
COPY restore.sh /docker-entrypoint-initdb.d/restore.sh
RUN chmod +x /docker-entrypoint-initdb.d/restore.sh

# Add a healthcheck to ensure the database is up and running
HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=3 \
    CMD pg_isready

# Expose the default PostgreSQL port
EXPOSE 5432/tcp
EXPOSE 5432/udp
