#!/usr/bin/env bash

PRIVATE_KEY=~/.ssh/id_cheyer
PUBLIC_KEY=~/.ssh/id_cheyer.pub

handle_file_found() {
  echo "✅ $1 exists."
}
handle_error() {
  echo -e "❌ $1 does not exist.\n🔥 Make sure to add private and public SSH keys in ~/.ssh/\nYou can find the SSH keys in 1Password\n"
  exit 1
}

if [ -f "$PRIVATE_KEY" ]; then
  handle_file_found $PRIVATE_KEY
else
  handle_error $PRIVATE_KEY
fi

if [ -f "$PUBLIC_KEY" ]; then
  handle_file_found $PUBLIC_KEY
else
  handle_error $PUBLIC_KEY
fi

# Start the ssh-agent in the background.
eval "$(ssh-agent -s)"

# Add key to ssh-agend
ssh-add --apple-use-keychain $PRIVATE_KEY
