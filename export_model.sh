#!/bin/bash

# Check that two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <MODEL_NAME> <VERSION>"
  exit 1
ficlear

# Assign arguments to environment variables
export MODEL_NAME="$1"
export VERSION="$2"

# Optionally print them for debugging
echo "MODEL_NAME: $MODEL_NAME"
echo "VERSION: $VERSION"

# Run your Python script
python3 "$(dirname "$0")/download_model.py"
