#!/bin/bash

# Get project name from the first argument
PROJECT_NAME=$1

# Exit if no name provided
if [ -z "$PROJECT_NAME" ]; then
  echo "❌ Please provide a project name."
  echo "Usage: ./setup.sh my_project"
  exit 1
fi

# Create folders
mkdir -p "$PROJECT_NAME"/{scripts,notes,test_files}

# Create files
touch "$PROJECT_NAME"/notes/commands.md
touch "$PROJECT_NAME"/scripts/setup.sh
touch "$PROJECT_NAME"/test_files/example.txt

echo "✅ Project '$PROJECT_NAME' created successfully."
