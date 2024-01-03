#!/bin/bash
PLUGINS='
bun
lefthook
python
'

# Add Plugins
for plugin in $PLUGINS; do
	asdf plugin add $plugin
done
