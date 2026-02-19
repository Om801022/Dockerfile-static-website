#!/bin/bash

set -e  

BASE_DIR=$(pwd)

DIR_NAME="FILE$(date +%F)"
mkdir -p "$DIR_NAME" && echo "Directory $DIR_NAME created"

cd "$DIR_NAME" || exit

touch hello.txt && echo "File Created"

DIR_NAME2="backup_$(date +%F)"
mkdir -p "$DIR_NAME2" && echo "Directory $DIR_NAME2 created"

SOURCE="hello.txt"
DESTINATION="$DIR_NAME2/"

if [ -f "$SOURCE" ]; then
    mv "$SOURCE" "$DESTINATION"
    echo "Moved $SOURCE to $DESTINATION"
else
    echo "Error: $SOURCE does not exist"
fi

BACKUP_DIR="$BASE_DIR/Back_up"
mkdir -p "$BACKUP_DIR"

ARCHIVE_NAME="$BACKUP_DIR/$DIR_NAME2.tar.gz"

tar -czf "$ARCHIVE_NAME" "$DIR_NAME2"

echo "Compressed $DIR_NAME2 into $ARCHIVE_NAME"

echo "Checking for older files..."

find "$BACKUP_DIR" -name "backup_*.tar.gz" -type f -mtime +7 -exec rm -f {} \;

echo "Old backups cleaned if any existed"

