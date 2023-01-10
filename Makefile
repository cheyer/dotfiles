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

