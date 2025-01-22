#!/bin/bash

# List of repositories
REPOSITORIES=(
  "/home/jmutangana/Documents"
  "/home/jmutangana/Desktop/html_basics"
  "/home/jmutangana/Desktop/joe01"
  "/home/jmutangana/Desktop/myProgramingLanguages"
)

# Loop through each repository and perform the Git operations
for REPO_PATH in "${REPOSITORIES[@]}"; do
  echo "Processing repository: $REPO_PATH"
  
  # Navigate to the repository
  cd "$REPO_PATH" || { echo "Failed to change directory to $REPO_PATH"; continue; }

  # Stage all changes
  git add -A

  # Commit changes with a timestamp message
  git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')"

  # Push changes to the main branch
  git push origin main

  echo "Completed update for repository: $REPO_PATH"
done
