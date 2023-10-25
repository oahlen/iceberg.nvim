# Iceberg Neovim

Lua port of [iceberg.vim](https://github.com/cocopon/iceberg.vim)

![Screenshot](https://github.com/oahlen/assets/raw/main/iceberg.nvim/screenshot.png)

The goal was to make the color scheme as small as possible while being faithful to the original theme.
Most of the original highlight groups have been removed in favor of treesitter and other popular lua based nvim plugins.

All credits go to Hiroki Kokubun [cocopon](https://github.com/cocopon) for creating the awesome theme in the first place!

## Features

* Small, fast and simple
* No configuration
* [lualine](https://github.com/nvim-lualine/lualine.nvim) theme

Specific highlights for:

* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [nvim tree](https://github.com/nvim-tree/nvim-tree.lua)
* [leap.nvim](https://github.com/ggandor/leap.nvim)
* [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## Development

The repository contains a Nix Flake for setting up a development environment with [huey](https://github.com/oahlen/huey)
available. With a flake enabled nix installation enter the environment like this:

```bash
nix develop
```

Then generate the lua color scheme like so:

```bash
huey iceberg.toml .
```
