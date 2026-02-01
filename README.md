# prismatic.nvim

A dark Neovim colorscheme with vibrant, jewel-toned colors - like light through a prism.

![Prismatic](https://img.shields.io/badge/neovim-%23000000.svg?style=flat&logo=neovim)

## Features

- Dark background with vivid accent colors
- Treesitter support
- LSP semantic token support
- Lualine theme included
- Plugin support: Telescope, nvim-cmp, nvim-tree, neo-tree, gitsigns, lazy.nvim, mason, which-key, flash.nvim, mini.nvim, and more

## Colors

| Color | Hex | Usage |
|-------|-----|-------|
| Blue | `#78a9ff` | Keywords, types |
| Magenta | `#ff7eb6` | Functions |
| Purple | `#be95ff` | Strings, constants |
| Cyan | `#3ddbd9` | Operators, delimiters |
| Yellow | `#fac863` | Types, warnings |
| Green | `#42be65` | Success, git add |
| Red | `#ee5396` | Errors, git delete |
| Orange | `#ff9e64` | Booleans, special |
| Teal | `#08bdba` | Macros, namespaces |
| Sky | `#82cfff` | Numbers |

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "yourusername/prismatic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("prismatic").setup()
    vim.cmd.colorscheme("prismatic")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yourusername/prismatic.nvim",
  config = function()
    require("prismatic").setup()
    vim.cmd.colorscheme("prismatic")
  end,
}
```

## Configuration

```lua
require("prismatic").setup({
  transparent = false,    -- Enable transparent background
  terminal_colors = true, -- Set terminal colors
})
```

## Lualine

Prismatic includes a matching lualine theme:

```lua
require("lualine").setup({
  options = { theme = "prismatic" }
})
```

## Extras

The theme repository also includes configs for:
- **Ghostty** terminal

## License

MIT
