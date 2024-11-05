#!/bin/bash

# Verify if Snyk is installed
if command -v snyk &> /dev/null; then
  echo "Snyk is installed."
else
  echo "Snyk is not installed. Please check your installation."
  exit 1
fi