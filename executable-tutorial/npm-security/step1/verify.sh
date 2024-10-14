#!/bin/bash

# Check if npm is installed
if command -v npm &> /dev/null
then
    echo "npm is installed"
    exit 0
else
    echo "npm is not installed"
    exit 1
fi