# VPS Self-Hosted Services

- All my personal projects are running on a single VPS.
- CI/CD setup, no need to deploy manually.
- Databases are only accessible internally and through Twingate.
- Monitoring is done with Prometheus and Grafana (Grafana is accessible through Twingate).
- Containers are managed remotely with Portainer.

## VPS Specifications

- VPS Provider: Hostinger
- 2 CPU Core
- 8GB RAM
- 100GB Storage

## Core Services

- **Traefik** - Reverse proxy with Let's Encrypt TLS
- **Portainer** - Container management
- **Watchtower** - Automatic container updates
- **Databases** - PostgreSQL databases with separate dev and prod environments
