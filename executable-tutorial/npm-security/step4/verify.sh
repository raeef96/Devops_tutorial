#!/bin/bash

# Verify if Snyk is installed
if command -v snyk &> /dev/null; then
  # Attempt to run snyk auth to check authentication
  snyk auth --help &> /dev/null
  if [ $? -ne 0 ]; then
    echo "Authentication failed. Please authenticate using 'snyk auth <YOUR_API_TOKEN>'"
    exit 1
  else
    echo "Authentication successful."
  fi
else
  echo "Snyk is not installed. Please check your installation."
  exit 1
fi