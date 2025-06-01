
#!/bin/bash

# Script Name: checker.sh
# Description: This script takes filename a input, checks if the file exits,
checks if it's a directory or regular file, and prints out its permissions and
last modified time.
# Author: Emanuel Najarro
# Date: 2025-06-01
# Version: 1.0

FILE=$1

if [ -z "$FILE" ]; then
  echo "⚠️  Usage: ./checker.sh <filename>"
  exit 1
fi

if [ ! -e "$FILE" ]; then
  echo "❌ File does not exist."
  exit 1
fi

if [ -d "$FILE" ]; then
  echo "📁 $FILE is a directory."
elif [ -f "$FILE" ]; then
  echo "📄 $FILE is a regular file."
else
  echo "❓ $FILE is neither a file nor a directory."
fi

echo "🔐 Permissions: $(ls -l "$FILE" | awk '{print $1}')"
echo "🕒 Last modified: $(stat -f "%Sm" "$FILE")"

