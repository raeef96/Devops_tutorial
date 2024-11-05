#!/bin/bash

# Verify if the project directory was created and package.json exists
if [ -f "npm-security/package.json" ]; then
  echo "Project setup verified successfully."
  
  # Check if node_modules directory exists
  if [ -d "npm-security/node_modules" ]; then
    echo "node_modules directory exists."
  else
    echo "node_modules directory is missing."
  fi
else
  echo "Project setup failed."
  exit 1
fi
