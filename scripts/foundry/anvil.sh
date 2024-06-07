#!/bin/zsh

# Chain to RPC endpoints list
export LIST=$(cat <<END
Mantle=https://rpc.mantle.xyz
Blast=https://rpc.blast.io
END
)

# filtering
CHAIN=$(echo "$LIST" | cut -d'=' -f1 | gum filter)
RPC=$(echo "$LIST" | grep $CHAIN | cut -d'=' -f2)

# Run Anvil
anvil -f $RPC
