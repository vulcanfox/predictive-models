#!/bin/bash

# Check that two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <MODEL_NAME> <VERSION>"
  exit 1
fi

# Assign arguments to environment variables
export MODEL_NAME="$1"
export STAGE="$2"

# Optionally print them for debugging
echo "MODEL_NAME: $MODEL_NAME"
echo "VERSION: $VERSION"

# Run your Python script
python "$(dirname "$0")/download_model.py"
