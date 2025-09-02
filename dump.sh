#!/usr/bin/env bash
set -euo pipefail

read -r -p "Enter database name: " DB_NAME
read -r -p "Enter username: " DB_USER
read -s -p "Enter password: " DB_PASS
echo
read -r -p "Enter host, default is localhost: " DB_HOST
read -r -p "Enter port, default is 5432: " DB_PORT
read -r -p "Enter SSL mode, default is prefer [disable, require, verify-ca, verify-full]: " SSL_MODE

DB_HOST="${DB_HOST:-localhost}"
DB_PORT="${DB_PORT:-5432}"
SSL_MODE="${SSL_MODE:-prefer}"

export PGSSLMODE="$SSL_MODE"
export PGPASSWORD="$DB_PASS"

OUTPUT_DIR="$(pwd)"
echo "Using SSL mode: $SSL_MODE"
echo "Getting list of tables..."

TABLES=$(psql -U "$DB_USER" -d "$DB_NAME" -h "$DB_HOST" -p "$DB_PORT" -At -c \
  "SELECT tablename FROM pg_tables WHERE schemaname = 'public';")

IFS=$'\n'
for TABLE in $TABLES; do
  [[ -z "$TABLE" ]] && continue
  echo "Exporting table $TABLE..."
  psql -U "$DB_USER" -d "$DB_NAME" -h "$DB_HOST" -p "$DB_PORT" -c \
    "\COPY \"$TABLE\" TO '$OUTPUT_DIR/${DB_NAME}_${TABLE}.csv' CSV HEADER;"
done
unset IFS

echo "All tables have been exported to CSV files in $OUTPUT_DIR."

