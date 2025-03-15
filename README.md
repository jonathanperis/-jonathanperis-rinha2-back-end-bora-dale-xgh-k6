# jonathanperis-rinha2-back-end-bora-dale-xgh-k6

This repository contains Grafana K6 stress tests designed for the "Rinha de Backend Segunda Edição". It simulates various backend transactional scenarios including debits, credits, client validations, and error handling.

## Technical Overview

- **Stress Testing with k6**: Implements multiple test scenarios (debits, credits, validations, account statements) to assess the performance and consistency of backend operations.
- **Dockerized Environment**: Includes a Dockerfile to build a custom Docker image integrating a k6 binary compiled with the InfluxDB output extension.
- **CI/CD Integration**: Uses GitHub Actions to automate the build and release pipeline, pushing Docker images for production deployments.
- **Usage Modes**: 
  - **Dev Mode**: Exports test metrics to InfluxDB.
  - **Prod Mode**: Runs tests quietly and generates an HTML report.
- **Project Scope**: This solution is actively used in Jonathan Peris's projects for the Rinha de Backend, showcasing these tests across all his submitted images.

## Getting Started

1. Ensure Docker is installed.
2. Build the Docker image:
   ```
   docker build -t jonathanperis/rinha2-back-end-bora-dale-xgh-k6 .
   ```
3. Run the container in the desired MODE (dev or prod).

## Contributors

- Jonathan Peris (https://github.com/jonathanperis)
