#!/usr/bin/env bash

echo "💻 Setting up VSCode"

brew tap homebrew/cask-fonts
brew install --cask font-victor-mono

echo "💅 Finished installing Fonts"

make vscode-extensions-install

echo "🌉 Finished installing VsCode Extensions"
