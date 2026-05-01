# Monokai Night for Neovim

A dark Neovim color scheme.

## Features
- 🌳 Full Treesitter support
- 🔧 LSP semantic token highlighting
- 📦 Popular plugin support (Telescope, NeoTree, GitSigns, etc.)
- 🖤 Pure black background (#000000)

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'ZzurabSiprashvili/monokai-night.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd('colorscheme monokai-night')
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'ZzurabSiprashvili/monokai-night.nvim',
  config = function()
    vim.cmd('colorscheme monokai-night')
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'ZzurabSiprashvili/monokai-night.nvim'
```

Then in your `init.lua`:
```lua
vim.cmd('colorscheme monokai-night')
```

## Manual Installation

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/ZzurabSiprashvili/monokai-night.nvim ~/.config/nvim/pack/themes/start/monokai-night.nvim
```

## Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Background | `#000000` | Editor background |
| Foreground | `#DDDDDD` | Default text |
| Red | `#FF3B79` | Keywords, operators |
| Pink | `#F92B72` | Terminal red |
| Orange | `#f57f00` | Parameters |
| Yellow | `#DBD06E` | Strings |
| Green | `#9ED72C` | Functions, properties |
| Cyan | `#6DCAE8` | Types |
| Blue | `#68BBFF` | Variables |
| Light Blue | `#66D9EF` | Preprocessor |
| Purple | `#AE81FC` | Numbers, constants |
| Comment | `#969696` | Comments |

## License

MIT License - see [LICENSE](LICENSE) file for details.
