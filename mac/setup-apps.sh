#!/usr/bin/env bash

echo "🍺 Installing apps"

declare -a arr=(
    "browserosaurus"
    "raycast"
    "warp"
    "visual-studio-code"
    "hyper"
    "slack"
)

## now loop through the above array
for i in "${arr[@]}"; do
    echo "💻 Installing $i"
    brew install --cask $i
done

brew install gh
