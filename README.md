# Personal Configurations

## Overview

```bash
git clone https://github.com/gavxin/config ~/config
```

**Linux**

```bash
# change dir to repo
cd ~/config

# alacritty
ln -s $(pwd)/alacritty ~/.config/alacritty

# neovim
# mv ~/.config/nvim ~/.config/nvim.bak
# mv ~/.local/share/nvim ~/.local/share/nvim.bak
# mv ~/.local/state/nvim ~/.local/state/nvim.bak
# mv ~/.cache/nvim ~/.cache/nvim.bak
ln -s $(pwd)/nvim ~/.config/nvim
```

**Windows**

Open powershell as administrator

```powershell
# change dir to repo
cd ~/config

# alacritty
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\alacritty" -Target .\alacritty

# neovim
# Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
# Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
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
