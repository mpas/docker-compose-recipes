#!/usr/bin/env bash
set -e

echo "--------------------------------------------------------------------------------"
echo "Running PostgreSQL initialization script"
echo "--------------------------------------------------------------------------------"

# execute some commands on postgresql initialization
psql -v ON_ERROR_STOP=1 <<-EOSQL

  -- CREATE USER $EXAMPLE_USER WITH PASSWORD '$EXAMPLE_USER_PASSWORD';
  -- CREATE DATABASE $EXAMPLE_DATABASE;
  -- GRANT ALL PRIVILEGES ON DATABASE $EXAMPLE_DATABASE TO $EXAMPLE_USER;

EOSQL
