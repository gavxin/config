# Personal Configurations

## Overview

```bash
git clone https://github.com/gavxin/config ~/config
```

**Linux**

```bash
# change dir to repo
cd ~/config

#
# alacritty
#
mkdir ~/.config/alacritty
cp alacritty/alacritty.toml ~/.config/alacritty/
# do some modification for your own
vim ~/.config/alacritty/alacritty.toml

#
# neovim
#
# remove old
# mv ~/.config/nvim ~/.config/nvim.bak
# mv ~/.local/share/nvim ~/.local/share/nvim.bak
# mv ~/.local/state/nvim ~/.local/state/nvim.bak
# mv ~/.cache/nvim ~/.cache/nvim.bak
#
# make symbolic link
ln -s $(pwd)/nvim ~/.config/nvim
```

**Windows**

Open powershell as administrator

```powershell
# change dir to repo
cd ~/config

#
# alacritty
#
mkdir "$env:APPDATA\alacritty"
cp alacritty/alacritty.toml "$env:APPDATA\alacritty\"
# do some modification for your own
vim ~/.config/alacritty/alacritty.toml

#
# neovim
#
# remove old
# Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
# Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
#
# make symbolic link
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target .\nvim
```

## Windows Powershell

Install [PSReadLine](https://github.com/PowerShell/PSReadLine)

```powershell
Install-Module -Name PowerShellGet -Force; exit
Install-Module PSReadLine -Repository PSGallery -Scope CurrentUser -Force

# open configuration file
notepad $PROFILE
# Add following line (without #) and save
# Set-PSReadLineKeyHandler -Key Ctrl+f -Function AcceptSuggestion
```
