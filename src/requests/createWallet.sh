
curl -X POST '127.0.0.1:1234/rpc/v0' \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBbGxvdyI6WyJyZWFkIiwid3JpdGUiLCJzaWduIiwiYWRtaW4iXX0.T9B-y1JDXzB17YsF-uDVr3owiwK6KZwQ5idxJ_80rbA' \
--data '{"jsonrpc":"2.0","id":1,"method":"Filecoin.WalletNew","params":["secp256k1"]}' \
| jq