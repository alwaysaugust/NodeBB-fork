#!/bin/bash

# Script to update and restart NodeBB

echo "Updating NodeBB"
git pull || { echo "Failed to pull latest changes"; exit 1; }

echo "Starting docker compose"
docker compose up -d --build || { echo "Failed to start docker compose"; exit 1; }

echo "Update completed successfully"