#!/bin/bash
PLUGINS='
deno
nodejs
rust
solidity
'

# Add Plugins
for plugin in $PLUGINS
do
  asdf plugin add $plugin
done
