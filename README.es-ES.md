# Monokai Night para Neovim

Un esquema de colores oscuro para Neovim.

## Características
- 🌳 Soporte completo para Treesitter
- 🔧 Resaltado de tokens semánticos LSP
- 📦 Soporte para plugins populares (Telescope, NeoTree, GitSigns, etc.)
- 🖤 Fondo negro puro (#000000)

## Instalación

### Usando [lazy.nvim](https://github.com/folke/lazy.nvim)

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

### Usando [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'ZzurabSiprashvili/monokai-night.nvim',
  config = function()
    vim.cmd('colorscheme monokai-night')
  end
}
```

### Usando [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'ZzurabSiprashvili/monokai-night.nvim'
```

Luego en tu `init.lua`:
```lua
vim.cmd('colorscheme monokai-night')
```

## Instalación Manual

Clona este repositorio en el directorio de configuración de Neovim:

```bash
git clone https://github.com/ZzurabSiprashvili/monokai-night.nvim ~/.config/nvim/pack/themes/start/monokai-night.nvim
```

## Paleta de Colores

| Color | Hex | Uso |
|-------|-----|-------|
| Fondo | `#000000` | Fondo del editor |
| Frente | `#DDDDDD` | Texto por defecto |
| Rojo | `#FF3B79` | Palabras clave, operadores |
| Rosa | `#F92B72` | Rojo terminal |
| Naranja | `#f57f00` | Parámetros |
| Amarillo | `#DBD06E` | Cadenas de texto |
| Verde | `#9ED72C` | Funciones, propiedades |
| Cian | `#6DCAE8` | Tipos |
| Azul | `#68BBFF` | Variables |
| Azul claro | `#66D9EF` | Preprocesador |
| Morado | `#AE81FC` | Números, constantes |
| Comentario | `#969696` | Comentarios |

## Licencia

Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.
