#!/bin/bash
set -e

echo "Tests will start in 15 seconds..."
sleep 15

if [ "$MODE" = "prod" ]; then
    echo "Running in Production mode: generating report"
    # In production mode, run k6 tests quietly.
    k6 run rinha-test.js --quiet
    if [ -f stress-test-report.html ]; then
        chmod 644 stress-test-report.html
        cp stress-test-report.html /reports/
        echo "Report copied to /reports/stress-test-report.html"
    else
        echo "Report not found!"
    fi
elif [ "$MODE" = "dev" ] || [ -z "$MODE" ]; then
    echo "Running in Dev mode: exporting data to InfluxDB"
    # In dev mode (default) export data to InfluxDB.
    k6 run rinha-test.js -o xk6-influxdb
else
    echo "Invalid MODE specified. Set MODE=dev or MODE=prod."
    exit 1
fi