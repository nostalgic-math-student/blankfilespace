#!/bin/bash

lotus daemon stop

# Start the full node in a separate shell instance
./litenode.sh &
# Wait for 30 seconds to allow the full node to start
sleep 10

# Create an authentication token
token=$(lotus auth create-token --perm "admin")

# Write the authentication token to an environment file
echo "TOKEN=$token" > ../../.env
