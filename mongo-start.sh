#!/bin/bash

# Starts mongod with defined DB_PATH

# Usage:
# ./mongo-start.sh

DB_PATH="/var/lib/mongodb"

mongod --dbpath=$DB_PATH
