#!/bin/bash

# Path to your Git repositories
REPO1="/home/jmutangana/Documents"
REPO2="/home/jmutangana/Desktop/html-basics"
REPO3="/home/jmutangana/Desktop/first-github-deploy"
REPO4="/home/jmutangana/Desktop/coding-files"

# Function to process each repository
process_repo() {
    local REPO_PATH=$1
    echo "Processing repository: $REPO_PATH"
    
    cd "$REPO_PATH" || exit
    
    # Stage and commit changes
    git add -A
    git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')"
    
    # Push changes to the main branch
    git push origin main
    
    echo "Completed update for repository: $REPO_PATH"
}

# Process all repositories
process_repo "$REPO1"
process_repo "$REPO2"
process_repo "$REPO3"
process_repo "$REPO4"

# Get current time
current_time=$(date '+%Y-%m-%d %H:%M:%S')

# Notify user with current time in message
notify-send "Cron Job" "The auto-push script has completed at $current_time"

