#!/usr/bin/env bash

curl 'https://api-v3.igdb.com/games' \
-d 'fields genres,name,platforms,rating;' \
-H 'user-key: API-KEY' \
-H 'Accept: application/json' | cat > games.json
