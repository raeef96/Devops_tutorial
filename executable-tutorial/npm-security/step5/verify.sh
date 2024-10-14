#!/bin/bash

# Verify if the Snyk YAML file exists
if [ ! -f "npm-security/.github/workflows/snyk.yml" ]; then
  echo "Error: Snyk YAML file not found at npm-security/.github/workflows/snyk.yml"
  exit 1
else
  echo "Snyk YAML file exists. Awesome!"
fi