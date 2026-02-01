# prismatic.nvim

## Colors

| Color   | Hex       | Usage                 |
| ------- | --------- | --------------------- |
| Blue    | `#78a9ff` | Keywords, types       |
| Magenta | `#ff7eb6` | Functions             |
| Purple  | `#be95ff` | Strings, constants    |
| Cyan    | `#3ddbd9` | Operators, delimiters |
| Yellow  | `#fac863` | Types, warnings       |
| Green   | `#42be65` | Success, git add      |
| Red     | `#ee5396` | Errors, git delete    |
| Orange  | `#ff9e64` | Booleans, special     |
| Teal    | `#08bdba` | Macros, namespaces    |
| Sky     | `#82cfff` | Numbers               |

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
