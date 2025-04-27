#!/bin/bash

# Change to the empties directory
cd empties

# Counter for the new filenames
counter=1

# Loop through all jpg files
for file in *.jpg; do
    # Skip if no files found
    [ -e "$file" ] || continue
    
    # Create new filename with leading zeros
    new_name=$(printf "%03d.jpg" $counter)
    
    # Rename the file
    mv "$file" "$new_name"
    
    # Increment counter
    ((counter++))
done

echo "Renamed $((counter-1)) files" 