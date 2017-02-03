#!/bin/bash

# If there is a metadata file present, use it to customize main file
METADATA_FILE=/opt/presentation/slides/metadata.conf
if [ -f "$METADATA_FILE" ] ; then

  # extract variables
  TITLE=$(grep '^TITLE' "$METADATA_FILE" | cut -d'=' -f2-)
  DESCRIPTION=$(grep '^DESCRIPTION' "$METADATA_FILE" | cut -d'=' -f2-)
  AUTHOR=$(grep '^AUTHOR' "$METADATA_FILE" | cut -d'=' -f2-)

  # replace on the index file
  INDEX_FILE=/opt/presentation/index.html
  [ ! -z "$TITLE" ] && \
    sed -i.bk -e "s#<title>.*#<title>${TITLE}</title>#g" "$INDEX_FILE"

  [ ! -z "$DESCRIPTION" ] && \
    sed -i.bk -e "s#<meta name=\"description.*#<meta name=\"description\" content=\"${DESCRIPTION}\">#g" "$INDEX_FILE"

  [ ! -z "$AUTHOR" ] && \
    sed -i.bk -e "s#<meta name=\"author.*#<meta name=\"author\" content=\"${AUTHOR}\">#g" "$INDEX_FILE"
fi

grunt serve
