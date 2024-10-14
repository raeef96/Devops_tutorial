#!/bin/bash

# Verify if Snyk is installed and if the audit returns a result
if command -v snyk &> /dev/null; then
  snyk test | grep -q "No vulnerabilities found" && echo "No vulnerabilities found!" || echo "Vulnerabilities detected!"
else
  echo "Snyk is not installed. Please check your installation."
  exit 1
fi