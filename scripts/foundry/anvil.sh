#!/bin/bash
anvil $(echo $(cat ~/.config/scripts/foundry/rpc.txt | gum choose --placeholder "Choose fork chain" \
  | cut -d ':' -f 2,3))
