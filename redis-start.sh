#!/bin/bash

# Starts redis service

# Usage:
# ./redis-start.sh

systemctl start redis.service
echo "redis.service started"
