# Dotfiles

> Personal dotfiles configuration for Zsh, Git etc. for bootstraping a new machine.

build on [Dotbot](https://github.com/anishathalye/dotbot)


## Installation
First copy this repository:
```
git clone git@github.com:cheyer/dotfiles.git .dotfiles --recursive
```

Then move the public and private SSH keys to the `~/.ssh` folder
```
mv ~/somewhere/id_key ~/.ssh/
mv ~/somewhere/id_key.pub ~/.ssh/
```

Now you can run the install script:
```
cd .dotfiles
./install
```

## Apps
To install zsh, just run:
```
make setup-zsh
```

## Apps
To install the recommended apps, just run:
```
make setup-apps
```

## VS Code
To install the recommended extension and setup fonts and theme for VS Code, just run:
```
make setup-vscode
```
To save currently installed extensions, just run the following script and commit the changes:
```
make vscode-extensions-save
```


## Issues
Currently SSH keys cannot be added via script, even though the install script will not fail.
`ssh-add -l` will error out with `The agent has no identities.`. In this case just run
```
ssh-add --apple-use-keychain $PRIVATE_KEY
```
and the SSH config should be complete.


## Resources
* [Dotbot](https://github.com/anishathalye/dotbot)
* [Bootstrap your Dotfiles with dotbot](https://www.elliotdenolf.com/posts/bootstrap-your-dotfiles-with-dotbot)
* [MacOS set-defaults.sh inspiration](https://github.com/denolfe/dotfiles/blob/master/macos/set-defaults.sh)

## Tools

| Name                                           	| Type             	| Description                                                        	|
|------------------------------------------------	|------------------	|--------------------------------------------------------------------	|
| [Warp](https://www.warp.dev/)                  	| Terminal         	| Super fast and modern terminal with batteries included.            	|
| [ZSH](https://ohmyz.sh/)                       	| Shell            	| Default shell.                                                     	|
| [VS Code](https://github.com/microsoft/vscode) 	| Editor           	| Default code editor.                                               	|
| [Raycast](https://www.raycast.com/)            	| Launcher         	| Nice spotlight replacement, comes with a lot more functionalities. 	|
| [Browserosaurus](https://browserosaurus.com/)  	| Browser Selector 	| Asks in which browser to open a link.                              	|