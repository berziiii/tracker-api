#!/bin/bash

curl --include --request PATCH http://localhost:3000/profiles/1 \
--header "Content-Type: application/json" \
--data '{
    "profile": {
      "first_name": "Bob"
    }
  }'
