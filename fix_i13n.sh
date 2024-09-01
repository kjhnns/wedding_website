#!/bin/bash
export LC_CTYPE=C

# Define the source and destination directories
SOURCE_DIR="./en"
DEST_DIR_DE="./de"
DEST_DIR_PT="./pt"





rm -rf "$DEST_DIR_DE/*"
mkdir -p "$DEST_DIR_DE"
cp -r "$SOURCE_DIR/"* "$DEST_DIR_DE/"
find "$DEST_DIR_DE" -type f -exec sed -i '' "s/window.language = 'en';/window.language = 'de';/g" {} +



rm -rf "$DEST_DIR_PT/*"
mkdir -p "$DEST_DIR_PT"
cp -r "$SOURCE_DIR/"* "$DEST_DIR_PT/"
find "$DEST_DIR_PT" -type f -exec sed -i '' "s/window.language = 'en';/window.language = 'pt';/g" {} +

echo "All files have been copied and the string has been replaced."