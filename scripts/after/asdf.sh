#!/bin/bash
PLUGINS='
deno
nodejs
yarn
rust
solidity
python
'

# Add Plugins
for plugin in $PLUGINS
do
  asdf plugin add $plugin
done
