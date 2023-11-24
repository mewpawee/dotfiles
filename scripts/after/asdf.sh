#!/bin/bash
PLUGINS='
bun
'

# Add Plugins
for plugin in $PLUGINS
do
  asdf plugin add $plugin
done
