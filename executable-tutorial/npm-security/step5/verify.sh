#!/bin/bash

# Verify if the Snyk YAML file exists and is not empty
if [ ! -f "npm-security/.github/workflows/snyk.yml" ]; then
  echo "Error: Snyk YAML file not found at npm-security/.github/workflows/snyk.yml"
  exit 1
elif [ ! -s "npm-security/.github/workflows/snyk.yml" ]; then
  echo "Error: Snyk YAML file is empty."
  exit 1
else
  echo "Snyk YAML file exists and is not empty. Awesome!"
fi