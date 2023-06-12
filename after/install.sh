#!/bin/bash
# Install yarn global from .confing/yarn
yarn global add

# Install LunarVim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

# Install Foundry-rs
curl -L https://foundry.paradigm.xyz | bash
