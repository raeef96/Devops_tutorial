#!/bin/bash

# Verify if the project directory was created and package.json exists
if [ -f "npm-security/package.json" ]; then
  echo "Project setup verified successfully."
else
  echo "Project setup failed. Please check your commands."
  exit 1
fi