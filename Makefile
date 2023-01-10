.PHONY: install 

# Run dotbot install script
install:
	./install

link:
	./install --only link

# Install apps
setup-apps:
	./mac/setup-apps.sh

# Setup VsCode
setup-vscode:
	./vscode/setup-vscode.sh

# Save current extensions
vscode-extensions-save:
	code --list-extensions > ./vscode/extensions.txt

# Install extensions
vscode-extensions-install:
	cat ./vscode/extensions.txt | xargs -L 1 code --install-extension
