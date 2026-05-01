#!/usr/bin/env bash
set -euo pipefail

printf "Enter the public GitHub repo URL (https://github.com/user/repo.git): \n"
read -r REPO_URL
if [[ -z "$REPO_URL" ]]; then
  echo "Repo URL is required."
  exit 1
fi

BASE_DIR="$(pwd)"
TMP_DIR=$(mktemp -d)
OUTPUT_FILE="commit_history.txt"
OUTPUT_PATH="$BASE_DIR/$OUTPUT_FILE"

echo "Cloning repository into temporary folder..."
git clone --depth 50 "$REPO_URL" "$TMP_DIR"

pushd "$TMP_DIR" > /dev/null
git log --oneline --decorate --max-count=50 --date=short > "$OUTPUT_PATH"
popd > /dev/null

rm -rf "$TMP_DIR"

echo "Created $OUTPUT_FILE in $BASE_DIR."
echo "Open $OUTPUT_PATH and copy the commit history into your certificate prompt."
