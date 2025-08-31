# Typing Trainer

Typing Trainer is a web application for practicing touch typing skills using Java Spring Boot with PostgreSQL and Docker.  
It supports REST API, Swagger UI, and basic authentication via Spring Security.

---

## Technologies

- Java 21, Spring Boot 3.5
- Spring Data JPA, Hibernate
- PostgreSQL 15 (via Docker)
- Flyway for database migrations
- Spring Security
- Swagger / OpenAPI
- Docker & Docker Compose
- Gradle Kotlin DSL

---

## Project Structure
typing-trainer/
├─ backend/ # Spring Boot backend
├─ frontend/ # frontend (if any)
├─ docker-compose.yml # Docker setup for app and DB
├─ README.md

---

## Quick Start with Docker

1. Make sure Docker and Docker Compose are installed.

2. In the project root, run:

```bash
docker-compose up --build
```

After the containers start:

- Application: http://localhost:8080
- Swagger UI: http://localhost:8080/swagger-ui.html
- PgAdmin: http://localhost:8081

---

## Database Configuration

### PostgreSQL (Docker)

- Database: typing_trainer
- User: postgres
- Password: postgres
- Port: 5432

### Flyway migrations are located in src/main/resources/db/migration/

---

## Test User

You can use the following test credentials to check authentication:

Username |Password|Role
admin	 |admin123|ADMIN

Password is stored in application.properties (for testing only; use BCrypt in production).

---

## Swagger / API

REST API documentation is available at /swagger-ui.html after running the application.
Swagger is automatically generated from Spring controller annotations.

---

## Local Run (without Docker)

1. Install PostgreSQL and create a database typing_trainer.

2. Configure application.properties with your local database URL.

3. Build and run the application with Gradle:
```bash
./gradlew bootRun
```

---

## License

MIT License

---