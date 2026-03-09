-- Monokai Night theme for Neovim
-- Based on: https://github.com/farbodvand/zed-monokai-night
-- Author: Farbod Vand (adapted for Neovim)

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'monokai-night'

local colors = {
  bg = '#000000',
  bg_alt = '#222222',
  fg = '#DDDDDD',
  selection = '#4B4B4B',
  comment = '#969696',
  red = '#FF3B79',
  pink = '#F92B72',
  orange = '#f57f00',
  yellow = '#DBD06E',
  green = '#9ED72C',
  cyan = '#6DCAE8',
  blue = '#68BBFF',
  light_blue = '#66D9EF',
  purple = '#AE81FC',
  border = '#595959c2',
  line_highlight = '#1E1E1E',
  visual = '#363636',
  gutter = '#8f8f8f',
  gutter_active = '#dbdbdb',
  search = '#464646',
  diff_add = '#003100',
  diff_change = '#2a1a00',
  diff_delete = '#4d0000',
  error = '#FE413F',
  warning = '#B3B42B',
  info = '#0092F3',
  hint = '#616161',
}

local function hi(group, opts)
  local cmd = 'highlight ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  vim.cmd(cmd)
end

-- Editor
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg })
hi('FloatBorder', { fg = colors.border, bg = colors.bg })
hi('ColorColumn', { bg = colors.visual })
hi('Cursor', { fg = colors.bg, bg = colors.fg })
hi('CursorLine', { bg = colors.line_highlight })
hi('CursorColumn', { bg = colors.line_highlight })
hi('CursorLineNr', { fg = colors.gutter_active, bg = colors.bg })
hi('LineNr', { fg = colors.gutter, bg = colors.bg })
hi('SignColumn', { fg = colors.gutter, bg = colors.bg })
hi('VertSplit', { fg = colors.border, bg = colors.bg })
hi('WinSeparator', { fg = colors.border, bg = colors.bg })

-- Search
hi('Search', { bg = colors.search })
hi('IncSearch', { bg = colors.search })
hi('CurSearch', { bg = colors.search })

-- Visual
hi('Visual', { bg = colors.selection })
hi('VisualNOS', { bg = colors.selection })

-- Statusline
hi('StatusLine', { fg = colors.fg, bg = colors.bg })
hi('StatusLineNC', { fg = colors.gutter, bg = colors.bg })
hi('TabLine', { fg = colors.fg, bg = colors.bg })
hi('TabLineFill', { bg = colors.bg })
hi('TabLineSel', { fg = colors.fg, bg = colors.bg_alt })

-- Popup Menu
hi('Pmenu', { fg = colors.fg, bg = colors.bg_alt })
hi('PmenuSel', { fg = colors.fg, bg = colors.visual })
hi('PmenuSbar', { bg = colors.visual })
hi('PmenuThumb', { bg = colors.gutter })

-- Diffs
hi('DiffAdd', { bg = colors.diff_add })
hi('DiffChange', { bg = colors.diff_change })
hi('DiffDelete', { fg = colors.error, bg = colors.diff_delete })
hi('DiffText', { bg = colors.diff_change })

-- Diagnostics
hi('DiagnosticError', { fg = colors.error })
hi('DiagnosticWarn', { fg = colors.warning })
hi('DiagnosticInfo', { fg = colors.info })
hi('DiagnosticHint', { fg = colors.hint })
hi('DiagnosticUnderlineError', { sp = colors.error, style = 'underline' })
hi('DiagnosticUnderlineWarn', { sp = colors.warning, style = 'underline' })
hi('DiagnosticUnderlineInfo', { sp = colors.info, style = 'underline' })
hi('DiagnosticUnderlineHint', { sp = colors.hint, style = 'underline' })

-- Syntax
hi('Comment', { fg = colors.comment })
hi('Constant', { fg = colors.purple })
hi('String', { fg = colors.yellow })
hi('Character', { fg = colors.yellow })
hi('Number', { fg = colors.purple })
hi('Boolean', { fg = colors.purple })
hi('Float', { fg = colors.purple })

hi('Identifier', { fg = colors.blue })
hi('Function', { fg = colors.green })

hi('Statement', { fg = colors.red })
hi('Conditional', { fg = colors.red })
hi('Repeat', { fg = colors.red })
hi('Label', { fg = colors.purple })
hi('Operator', { fg = colors.red })
hi('Keyword', { fg = colors.red })
hi('Exception', { fg = colors.red })

hi('PreProc', { fg = colors.light_blue })
hi('Include', { fg = colors.red })
hi('Define', { fg = colors.red })
hi('Macro', { fg = colors.light_blue })
hi('PreCondit', { fg = colors.red })

hi('Type', { fg = colors.cyan })
hi('StorageClass', { fg = colors.red })
hi('Structure', { fg = colors.cyan })
hi('Typedef', { fg = colors.cyan })

hi('Special', { fg = colors.purple })
hi('SpecialChar', { fg = colors.purple })
hi('Tag', { fg = colors.red })
hi('Delimiter', { fg = colors.fg })
hi('SpecialComment', { fg = colors.comment })
hi('Debug', { fg = colors.red })

hi('Underlined', { style = 'underline' })
hi('Ignore', { fg = colors.gutter })
hi('Error', { fg = colors.error, bg = colors.diff_delete })
hi('Todo', { fg = colors.yellow, style = 'bold' })

-- Treesitter
hi('@variable', { fg = colors.blue })
hi('@variable.builtin', { fg = colors.blue })
hi('@variable.parameter', { fg = colors.orange })
hi('@variable.member', { fg = colors.green })

hi('@constant', { fg = colors.purple })
hi('@constant.builtin', { fg = colors.purple })
hi('@constant.macro', { fg = colors.purple })

hi('@module', { fg = colors.cyan })
hi('@label', { fg = colors.purple })

hi('@string', { fg = colors.yellow })
hi('@string.escape', { fg = colors.purple })
hi('@string.regex', { fg = colors.yellow })
hi('@string.special', { fg = colors.yellow })
hi('@string.special.symbol', { fg = colors.yellow })

hi('@character', { fg = colors.yellow })
hi('@character.special', { fg = colors.purple })

hi('@boolean', { fg = colors.purple })
hi('@number', { fg = colors.purple })
hi('@number.float', { fg = colors.purple })

hi('@function', { fg = colors.green })
hi('@function.builtin', { fg = colors.green })
hi('@function.call', { fg = colors.green })
hi('@function.macro', { fg = colors.green })
hi('@function.method', { fg = colors.green })
hi('@function.method.call', { fg = colors.green })

hi('@constructor', { fg = colors.cyan })
hi('@operator', { fg = colors.red })

hi('@keyword', { fg = colors.red })
hi('@keyword.function', { fg = colors.red })
hi('@keyword.operator', { fg = colors.red })
hi('@keyword.return', { fg = colors.red })
hi('@keyword.conditional', { fg = colors.red })
hi('@keyword.repeat', { fg = colors.red })
hi('@keyword.import', { fg = colors.red })
hi('@keyword.exception', { fg = colors.red })

hi('@type', { fg = colors.cyan })
hi('@type.builtin', { fg = colors.cyan })
hi('@type.definition', { fg = colors.cyan })
hi('@type.qualifier', { fg = colors.red })

hi('@property', { fg = colors.green })
hi('@attribute', { fg = colors.green })

hi('@comment', { fg = colors.comment })
hi('@comment.documentation', { fg = colors.comment })

hi('@tag', { fg = colors.red })
hi('@tag.attribute', { fg = colors.green })
hi('@tag.delimiter', { fg = colors.fg })

hi('@markup.strong', { style = 'bold' })
hi('@markup.italic', { style = 'italic' })
hi('@markup.underline', { style = 'underline' })
hi('@markup.strikethrough', { style = 'strikethrough' })
hi('@markup.heading', { fg = colors.yellow, style = 'bold' })
hi('@markup.link', { fg = colors.light_blue })
hi('@markup.link.url', { fg = colors.yellow, style = 'underline' })
hi('@markup.link.label', { fg = colors.purple })
hi('@markup.raw', { fg = colors.yellow })
hi('@markup.list', { fg = colors.red })
hi('@markup.list.checked', { fg = colors.green })
hi('@markup.list.unchecked', { fg = colors.red })

hi('@punctuation', { fg = colors.fg })
hi('@punctuation.bracket', { fg = colors.fg })
hi('@punctuation.delimiter', { fg = colors.fg })
hi('@punctuation.special', { fg = colors.fg })

-- LSP Semantic Tokens
hi('@lsp.type.class', { fg = colors.cyan })
hi('@lsp.type.decorator', { fg = colors.green })
hi('@lsp.type.enum', { fg = colors.cyan })
hi('@lsp.type.enumMember', { fg = colors.purple })
hi('@lsp.type.function', { fg = colors.green })
hi('@lsp.type.interface', { fg = colors.cyan })
hi('@lsp.type.macro', { fg = colors.light_blue })
hi('@lsp.type.method', { fg = colors.green })
hi('@lsp.type.namespace', { fg = colors.cyan })
hi('@lsp.type.parameter', { fg = colors.orange })
hi('@lsp.type.property', { fg = colors.green })
hi('@lsp.type.struct', { fg = colors.cyan })
hi('@lsp.type.type', { fg = colors.cyan })
hi('@lsp.type.typeParameter', { fg = colors.cyan })
hi('@lsp.type.variable', { fg = colors.blue })

-- Git signs
hi('GitSignsAdd', { fg = colors.green, bg = colors.bg })
hi('GitSignsChange', { fg = colors.warning, bg = colors.bg })
hi('GitSignsDelete', { fg = colors.error, bg = colors.bg })

-- Telescope
hi('TelescopeBorder', { fg = colors.border, bg = colors.bg })
hi('TelescopeNormal', { fg = colors.fg, bg = colors.bg })
hi('TelescopeSelection', { fg = colors.fg, bg = colors.visual })
hi('TelescopeMatching', { fg = colors.yellow, style = 'bold' })

-- NeoTree / NvimTree
hi('NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeNormalNC', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeDirectoryIcon', { fg = colors.cyan })
hi('NeoTreeDirectoryName', { fg = colors.cyan })
hi('NeoTreeFileName', { fg = colors.fg })
hi('NeoTreeFileIcon', { fg = colors.fg })
hi('NeoTreeGitAdded', { fg = colors.green })
hi('NeoTreeGitModified', { fg = colors.warning })
hi('NeoTreeGitDeleted', { fg = colors.error })

hi('NvimTreeNormal', { fg = colors.fg, bg = colors.bg })
hi('NvimTreeFolderIcon', { fg = colors.cyan })
hi('NvimTreeFolderName', { fg = colors.cyan })
hi('NvimTreeOpenedFolderName', { fg = colors.cyan })
hi('NvimTreeGitNew', { fg = colors.green })
hi('NvimTreeGitDirty', { fg = colors.warning })
hi('NvimTreeGitDeleted', { fg = colors.error })

-- IndentBlankline
hi('IblIndent', { fg = '#333333' })
hi('IblScope', { fg = '#757575' })
hi('IndentBlanklineChar', { fg = '#333333' })
hi('IndentBlanklineContextChar', { fg = '#757575' })

-- Which-key
hi('WhichKey', { fg = colors.red })
hi('WhichKeyGroup', { fg = colors.cyan })
hi('WhichKeyDesc', { fg = colors.fg })
hi('WhichKeySeparator', { fg = colors.comment })
hi('WhichKeyFloat', { bg = colors.bg })

-- Notify
hi('NotifyERRORBorder', { fg = colors.error })
hi('NotifyWARNBorder', { fg = colors.warning })
hi('NotifyINFOBorder', { fg = colors.info })
hi('NotifyDEBUGBorder', { fg = colors.hint })
hi('NotifyTRACEBorder', { fg = colors.hint })
hi('NotifyERRORIcon', { fg = colors.error })
hi('NotifyWARNIcon', { fg = colors.warning })
hi('NotifyINFOIcon', { fg = colors.info })
hi('NotifyDEBUGIcon', { fg = colors.hint })
hi('NotifyTRACEIcon', { fg = colors.hint })
hi('NotifyERRORTitle', { fg = colors.error })
hi('NotifyWARNTitle', { fg = colors.warning })
hi('NotifyINFOTitle', { fg = colors.info })
hi('NotifyDEBUGTitle', { fg = colors.hint })
hi('NotifyTRACETitle', { fg = colors.hint })

-- Cmp (completion)
hi('CmpItemAbbrMatch', { fg = colors.yellow, style = 'bold' })
hi('CmpItemAbbrMatchFuzzy', { fg = colors.yellow })
hi('CmpItemKindVariable', { fg = colors.blue })
hi('CmpItemKindInterface', { fg = colors.cyan })
hi('CmpItemKindText', { fg = colors.fg })
hi('CmpItemKindFunction', { fg = colors.green })
hi('CmpItemKindMethod', { fg = colors.green })
hi('CmpItemKindKeyword', { fg = colors.red })
hi('CmpItemKindProperty', { fg = colors.green })
hi('CmpItemKindUnit', { fg = colors.purple })
hi('CmpItemKindClass', { fg = colors.cyan })
hi('CmpItemKindEnum', { fg = colors.cyan })
hi('CmpItemKindStruct', { fg = colors.cyan })
hi('CmpItemKindConstant', { fg = colors.purple })

-- Additional UI
hi('Directory', { fg = colors.cyan })
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })
hi('MoreMsg', { fg = colors.green })
hi('ModeMsg', { fg = colors.fg })
hi('Question', { fg = colors.cyan })
hi('NonText', { fg = colors.gutter })
hi('SpecialKey', { fg = colors.gutter })
hi('Title', { fg = colors.yellow, style = 'bold' })
hi('Folded', { fg = colors.comment, bg = colors.visual })
hi('FoldColumn', { fg = colors.comment, bg = colors.bg })
hi('MatchParen', { fg = colors.red, style = 'bold' })
hi('Conceal', { fg = colors.comment })

-- Scrollbar
hi('ScrollbarHandle', { bg = colors.visual })

-- Gutter
hi('GitGutterAdd', { fg = colors.green })
hi('GitGutterChange', { fg = colors.warning })
hi('GitGutterDelete', { fg = colors.error })
