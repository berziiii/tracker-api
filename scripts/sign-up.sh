#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "berzelba@gmail.com",
      "password": "blah",
      "password_confirmation": "blah",
      "admin": "true"
    }
  }'
