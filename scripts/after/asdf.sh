#!/bin/bash
PLUGINS='
bun
rust
solidity
python
'

# Add Plugins
for plugin in $PLUGINS
do
  asdf plugin add $plugin
done
