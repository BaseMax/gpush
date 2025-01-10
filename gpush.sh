#!/bin/bash

# https://github.com/BaseMax/gpush
# gpush: A Git helper script to streamline adding, committing, and pushing changes.
# Supports Linux, macOS, and Windows (via WSL or Git Bash).

DEFAULT_MESSAGE="Update"

function show_help() {
    echo "Usage: gpush [commit_message]"
    echo "If no commit message is provided, defaults to: '$DEFAULT_MESSAGE'"
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

COMMIT_MESSAGE=${1:-$DEFAULT_MESSAGE}

if git add . && git commit -m "$COMMIT_MESSAGE" && git push; then
    echo "Changes pushed successfully!"
else
    echo "An error occurred during the Git operation."
    exit 1
fi
