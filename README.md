# Khoj 🔍

> **⚠️ Work in Progress** - This project is currently under active development.

A data streaming and search pipeline project built with OpenSearch, Kafka, and PostgreSQL for real-time data indexing and search capabilities.

## 📋 Overview

Khoj is a modern data pipeline that implements Change Data Capture (CDC) from PostgreSQL to OpenSearch via Kafka/Redpanda, enabling real-time search capabilities on your relational data.

## 🏗️ Architecture

The project uses the following technology stack:

- **PostgreSQL** - Primary data store with logical replication enabled
- **Debezium** - CDC connector for capturing database changes
- **Redpanda** - Kafka-compatible event streaming platform
- **Kafka Connect** - Connector framework for data integration
- **OpenSearch** - Search and analytics engine (coming soon)
- **Adminer** - Database management UI

## 🚀 Getting Started

### Prerequisites

- Docker and Docker Compose
- Python 3.x (for development scripts)

### Running the Stack

1. Start all services:

```bash
docker compose -f docker/docker-compose.yml up -d
```

2. Access the services:
   - **Adminer** (Database UI): http://localhost:8080
   - **Redpanda Console**: http://localhost:8090
   - **Kafka Connect API**: http://localhost:8083

### Database Setup

1. Connect to PostgreSQL via Adminer:

   - Server: `db`
   - Username: `postgres`
   - Password: `example`
   - Database: `postgres`

2. Run the database setup scripts:

```bash
# Create tables
psql -h localhost -U postgres -f db/table.sql

# Set up Debezium permissions
psql -h localhost -U postgres -f db/role.sql
```

## 📁 Project Structure

```
Khoj/
├── db/                     # Database schemas and configurations
│   ├── table.sql          # Table definitions
│   └── role.sql           # User permissions for Debezium
├── docker/                 # Docker configurations
│   └── docker-compose.yml # Service orchestration
└── opensearch/            # OpenSearch integration (in development)
    └── deprecated attempts/  # Experimental notebooks
```

## 🔧 Configuration

### PostgreSQL Configuration

The database is configured with:

- Logical replication enabled (`wal_level=logical`)
- Support for multiple replication slots
- Debezium user with SELECT permissions

### Kafka/Redpanda Setup

- **Kafka Broker**: Internal (`redpanda-0:9092`) / External (`localhost:19092`)
- **Schema Registry**: http://localhost:18081
- **HTTP Proxy**: http://localhost:18082
- **Admin API**: http://localhost:19644

## 📊 Current Features

- ✅ PostgreSQL with logical replication
- ✅ Redpanda for event streaming
- ✅ Kafka Connect with Debezium
- ✅ Products table with CDC tracking
- 🚧 OpenSearch integration
- 🚧 Real-time search indexing

## 🛠️ Development

This project is actively being developed. The OpenSearch integration and search capabilities are currently being implemented.

---

**Status**: 🚧 Under Development | Last Updated: October 2025
