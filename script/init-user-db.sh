#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    create user docker with password '$DOCKER_PASSWORD';
    create database test;
    grant connect on database test to docker;
    create schema if not exists fiddle;
    grant all on schema fiddle to docker;
    set search_path to fiddle,public;
EOSQL

psql -v --username docker --dbname test -f /script/create_table.sql
