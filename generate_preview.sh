#!/bin/bash
# Generate a PREVIEW.MD file with previews of all images in this directory

TITLE="# Image Previews"
REPO_URL="https://github.com/seansamarov/prc-pandas"

echo "$TITLE" > PREVIEW.MD

for FILE in *; do
	if [[ -z $(git check-ignore "$FILE") && $(file -b --mime-type "$FILE") == "image/"* ]]; then #Figured it out
		echo "![Panda Reaction Image](${REPO_URL}/blob/main/${FILE})" >> PREVIEW.MD
	fi
done
