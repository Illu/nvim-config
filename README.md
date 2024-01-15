# Neovim configuration

## Installation

- Install neovim (`brew install neovim`)
- Clone this project inside `~/.config/nvim/`
- Open nvim, you're done!

### Bonus: add the `vi` alias:

``` bash
alias vi="nvim"
alias vim="nvim"
```

## A list of useful shortcuts

### Files

| Command            | Shortcut   |
|--------------------|------------|
| Find a file in git | ctrl - o   |
| Find a file        | Space - o  |
| Global search      | Space - s  |
| Open netrw         | Space - pv |
| Toggle terminal    | ctrl - `   |

### General

| Command                 | Shortcut                   |
|-------------------------|----------------------------|
| Go to file under cursor | gd (ctrl - t to come back) |
| Preview a .md file      | :Glow                      |
| Go back to previous file| ctrl - ^                   |

### Splits

| Command                  | Shortcut          |
|--------------------------|-------------------|
| Split vertically         | :vs               |
| Split horizontally       | :sp               |
| Switch panes w/ direction| ctrl - w - [hjkl] |
| Close pane               | ctrl - w - q      |

### Code 

| Command                 | Shortcut    |
|-------------------------|-------------|
| Go to file under cursor | gd          |
| Format file             | Space - f   |
| Get type definition     | K           |
| Comment line            | gcc         |
| Comment selection       | gc          |
| Toggle Trouble          | Space - t   |
| Rename something (OFF)  | Space - vrn |
| See all references (OFF)| Space - vrr |
| Cut out word            | ciw         |
| Cut out inside quotes   | ci"         |
| Find all refs for word  | Space - vr  |
| See error at cursor     | Space - vd  |
| Show autocomplete (EDIT)| ctrl - c    |


### Harpoon

| Command               | Shortcut                |
|-----------------------|-------------------------|
| Add file to Harpoon   | Space - a               |
| Show Harpoon menu     | Space - e               |
| Previous Harpoon file | Space - q               |
| Next Harpoon file     | Space - w               |
| Harpoon quick switch  | Space - [1, 2, 3, or 4] |

### Git

| Command                    | Shortcut  |
|----------------------------|-----------|
| Git diff the current line  | Space - g |
| Git blame the current line | Space - b |
| Show Fugitive              | :Git      |
| Reset file                 | :Gread    |

