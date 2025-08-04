# ⚙️ Trino 421 – lib Directory Overview

This folder contains all required JARs for running **Trino 421** with support for querying Hive, Hudi, HDFS, JSON, and advanced caching with Apache Ignite (via Trino connector).

---

## 📦 Categories of JARs

### 🔹 1. Trino Core Components

These JARs implement Trino’s main engine and execution layers:

- `trino-main-421.jar` – Core Trino engine
- `trino-spi-421.jar` – Service Provider Interface
- `trino-server-main-421.jar` – Standalone Trino server
- `trino-client-421.jar` – JDBC/HTTP client library
- `trino-parser-421.jar` – SQL parser
- `trino-plugin-toolkit-421.jar` – Plugin API toolkit

---

### 🔹 2. Trino Utility Libraries

- `trino-cache-421.jar` – SQL cache functionality
- `trino-matching-421.jar` – Pattern matching utils
- `trino-array-421.jar` – Array type support
- `trino-memory-context-421.jar` – Memory tracking
- `trino-geospatial-toolkit-421.jar` – Geospatial functions

---

### 🔹 3. JSON & Jackson (✅ Needed)

Trino uses Jackson for handling JSON, HTTP, and REST APIs:

- `jackson-core-2.15.2.jar`
- `jackson-databind-2.15.2.jar`
- `jackson-annotations-2.15.2.jar`
- `jackson-datatype-jsr310`, `jdk8`, `joda`, `guava` – Type converters
- `jackson-dataformat-smile.jar`, `parameter-names.jar` – Advanced serialization formats

---

### 🔹 4. Web Server – Jetty + Jersey + Jakarta (Trino’s HTTP API stack)

Trino embeds **Jetty 11** and **Jersey 3** for handling its RESTful API and CLI web access:

- Jetty (all `jetty-*.jar`)
- Jersey (all `jersey-*.jar`)
- `jakarta.*.jar` – Jakarta RESTful Web Services (JAX-RS)

---

### 🔹 5. Authentication / Security

Used by Trino for token authentication, validation, encryption:

- `jjwt-api`, `jjwt-impl`, `jjwt-jackson` – JWT support
- `nimbus-jose-jwt`, `oauth2-oidc-sdk` – OAuth 2.0 and OIDC
- `hibernate-validator`, `jakarta.validation-api` – Parameter validation
- `jboss-logging`, `log4j-*`, `slf4j-*`, `logback-core` – Logging support

---

### 🔹 6. Telemetry / Observability (OpenTelemetry Support)

- `opentelemetry-api`, `sdk`, `context`, `logs`, `metrics`, `trace`, `semconv`
- Used for exposing Prometheus metrics, tracing, and logging

---

### 🔹 7. Expression Evaluation & Regex

- `antlr4-runtime` – SQL parsing
- `re2j-td`, `joni` – Regex parsing engines
- `byte-buddy`, `asm-*` – Bytecode instrumentation
- `guava`, `jts-core` – Collections and Geometry

---

### 🔹 8. JVM Monitoring / Native Access

- `jna`, `jna-platform` – Native access (used by some plugins)
- `oshi-core` – System-level metrics (CPU, memory)
- `HdrHistogram`, `jol-core` – Performance and object layout tracking

---

### 🔹 9. Legacy / Miscellaneous Utilities

- `json-simple`, `json-smart` – Lightweight JSON parsers
- `commons-codec`, `commons-math3` – Encoding and math utilities
- `guice`, `hk2-*`, `jaxb-*` – Dependency injection and XML binding
- `javassist` – Runtime bytecode manipulation
- `stream-2.9.5.jar`, `units-1.9.jar` – Miscellaneous internal dependencies

---

## 🧹 .gitignore Recommendation

To avoid committing binaries:

```gitignore
lib/*.jar
!README.md
