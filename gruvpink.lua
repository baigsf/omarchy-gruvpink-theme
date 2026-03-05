-- GlassBetter colorscheme for Neovim
-- Based on the glassbetter color palette

local colors = {
  bg = "NONE",
  fg = "#f5f5d0",
  black = "#13131D",
  bright_black = "#434353",
  red = "#EA90A8",
  bright_red = "#f6bfce",
  green = "#a6b2c7",
  bright_green = "#d1d9e4",
  yellow = "#D18BA2",
  bright_yellow = "#e3aebf",
  blue = "#7c7ca8",
  bright_blue = "#bcbcd4",
  magenta = "#9f859f",
  bright_magenta = "#bfadbf",
  cyan = "#919ab7",
  bright_cyan = "#d2d7e3",
  white = "#f5f5d0",
  bright_white = "#f5f5d0",
  surface2 = "#434353",
  surface1 = "#2a2a3d",
  surface0 = "#1e1e2d",
  pink = "#EA90A8",
  mauve = "#D18BA2",
  peach = "#e3aebf",
  lavender = "#9f859f",
  subtext1 = "#a1a2a7",
  subtext0 = "#919ab7",
  overlay2 = "#bcbcd4",
  overlay1 = "#a6b2c7",
  overlay0 = "#7c7ca8",
}

local function set_highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function setup()
  -- Reset highlights
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "glassbetter"
  vim.opt.termguicolors = true

  -- Editor highlights
  set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
  set_highlight("NormalFloat", { fg = colors.fg, bg = "NONE" })
  set_highlight("FloatBorder", { fg = colors.pink, bg = "NONE" })
  set_highlight("FloatTitle", { fg = colors.pink, bg = "NONE" })
  set_highlight("Cursor", { fg = colors.bg, bg = colors.pink })
  set_highlight("CursorLine", { bg = colors.surface0 })
  set_highlight("CursorColumn", { bg = colors.surface0 })
  set_highlight("ColorColumn", { bg = colors.surface0 })
  set_highlight("LineNr", { fg = colors.surface2 })
  set_highlight("CursorLineNr", { fg = colors.pink })
  set_highlight("SignColumn", { bg = colors.bg })
  set_highlight("StatusLine", { fg = colors.fg, bg = colors.surface1 })
  set_highlight("StatusLineNC", { fg = colors.subtext0, bg = colors.surface0 })
  set_highlight("TabLine", { fg = colors.subtext0, bg = colors.surface0 })
  set_highlight("TabLineFill", { bg = colors.surface0 })
  set_highlight("TabLineSel", { fg = colors.pink, bg = colors.bg })
  set_highlight("WinSeparator", { fg = colors.surface2 })
  set_highlight("VertSplit", { fg = colors.surface2 })
  set_highlight("Folded", { fg = colors.subtext0, bg = colors.surface0 })
  set_highlight("FoldColumn", { fg = colors.surface2 })
  
  -- Search and selection
  set_highlight("Search", { fg = colors.bg, bg = colors.yellow })
  set_highlight("IncSearch", { fg = colors.bg, bg = colors.pink })
  set_highlight("Substitute", { fg = colors.bg, bg = colors.pink })
  set_highlight("Visual", { bg = "#3d2a4d", bold = true })
  set_highlight("VisualNOS", { bg = "#3d2a4d", bold = true })
  
  -- Messages
  set_highlight("ErrorMsg", { fg = colors.pink, bold = true })
  set_highlight("WarningMsg", { fg = colors.peach, bold = true })
  set_highlight("ModeMsg", { fg = colors.fg })
  set_highlight("MsgArea", { fg = colors.fg })
  set_highlight("MoreMsg", { fg = colors.blue })
  set_highlight("Question", { fg = colors.blue })
  
  -- Popup menu
  set_highlight("Pmenu", { fg = colors.fg, bg = colors.surface0 })
  set_highlight("PmenuSel", { fg = colors.bg, bg = colors.pink })
  set_highlight("PmenuSbar", { bg = colors.surface1 })
  set_highlight("PmenuThumb", { bg = colors.surface2 })
  set_highlight("WildMenu", { fg = colors.bg, bg = colors.pink })
  
  -- Spelling
  set_highlight("SpellBad", { undercurl = true, sp = colors.pink })
  set_highlight("SpellCap", { undercurl = true, sp = colors.blue })
  set_highlight("SpellLocal", { undercurl = true, sp = colors.cyan })
  set_highlight("SpellRare", { undercurl = true, sp = colors.magenta })
  
  -- Syntax highlighting
  set_highlight("Comment", { fg = colors.surface2, italic = true })
  set_highlight("Constant", { fg = colors.pink })
  set_highlight("String", { fg = colors.green })
  set_highlight("Character", { fg = colors.green })
  set_highlight("Number", { fg = colors.peach })
  set_highlight("Boolean", { fg = colors.pink, bold = true })
  set_highlight("Float", { fg = colors.peach })
  set_highlight("Identifier", { fg = colors.fg })
  set_highlight("Function", { fg = colors.pink })
  set_highlight("Statement", { fg = colors.mauve })
  set_highlight("Conditional", { fg = colors.mauve })
  set_highlight("Repeat", { fg = colors.mauve })
  set_highlight("Label", { fg = colors.mauve })
  set_highlight("Operator", { fg = colors.mauve })
  set_highlight("Keyword", { fg = colors.mauve })
  set_highlight("Exception", { fg = colors.mauve })
  set_highlight("PreProc", { fg = colors.lavender })
  set_highlight("Include", { fg = colors.lavender })
  set_highlight("Define", { fg = colors.lavender })
  set_highlight("Macro", { fg = colors.lavender })
  set_highlight("PreCondit", { fg = colors.lavender })
  set_highlight("Type", { fg = colors.blue })
  set_highlight("StorageClass", { fg = colors.blue })
  set_highlight("Structure", { fg = colors.blue })
  set_highlight("Typedef", { fg = colors.blue })
  set_highlight("Special", { fg = colors.pink })
  set_highlight("SpecialChar", { fg = colors.pink })
  set_highlight("Tag", { fg = colors.pink })
  set_highlight("Delimiter", { fg = colors.subtext0 })
  set_highlight("SpecialComment", { fg = colors.surface2, italic = true })
  set_highlight("Debug", { fg = colors.pink })
  set_highlight("Underlined", { underline = true })
  set_highlight("Ignore", { fg = colors.surface2 })
  set_highlight("Error", { fg = colors.pink, bold = true })
  set_highlight("Todo", { fg = colors.bg, bg = colors.pink, bold = true })
  
  -- Treesitter highlights
  set_highlight("@variable", { fg = colors.fg })
  set_highlight("@variable.builtin", { fg = colors.pink })
  set_highlight("@variable.parameter", { fg = colors.fg })
  set_highlight("@variable.member", { fg = colors.fg })
  set_highlight("@constant", { fg = colors.pink })
  set_highlight("@constant.builtin", { fg = colors.pink })
  set_highlight("@constant.macro", { fg = colors.lavender })
  set_highlight("@module", { fg = colors.blue })
  set_highlight("@label", { fg = colors.mauve })
  set_highlight("@string", { fg = colors.green })
  set_highlight("@string.documentation", { fg = colors.green })
  set_highlight("@string.regexp", { fg = colors.peach })
  set_highlight("@string.escape", { fg = colors.pink })
  set_highlight("@string.special", { fg = colors.pink })
  set_highlight("@character", { fg = colors.green })
  set_highlight("@character.special", { fg = colors.pink })
  set_highlight("@boolean", { fg = colors.pink })
  set_highlight("@number", { fg = colors.peach })
  set_highlight("@number.float", { fg = colors.peach })
  set_highlight("@type", { fg = colors.blue })
  set_highlight("@type.builtin", { fg = colors.blue })
  set_highlight("@type.definition", { fg = colors.blue })
  set_highlight("@attribute", { fg = colors.lavender })
  set_highlight("@property", { fg = colors.fg })
  set_highlight("@function", { fg = colors.pink })
  set_highlight("@function.builtin", { fg = colors.pink })
  set_highlight("@function.call", { fg = colors.pink })
  set_highlight("@function.macro", { fg = colors.lavender })
  set_highlight("@function.method", { fg = colors.pink })
  set_highlight("@function.method.call", { fg = colors.pink })
  set_highlight("@constructor", { fg = colors.blue })
  set_highlight("@operator", { fg = colors.mauve })
  set_highlight("@keyword", { fg = colors.mauve })
  set_highlight("@keyword.coroutine", { fg = colors.mauve })
  set_highlight("@keyword.function", { fg = colors.mauve })
  set_highlight("@keyword.operator", { fg = colors.mauve })
  set_highlight("@keyword.import", { fg = colors.lavender })
  set_highlight("@keyword.type", { fg = colors.mauve })
  set_highlight("@keyword.modifier", { fg = colors.mauve })
  set_highlight("@keyword.repeat", { fg = colors.mauve })
  set_highlight("@keyword.return", { fg = colors.mauve })
  set_highlight("@keyword.debug", { fg = colors.mauve })
  set_highlight("@keyword.exception", { fg = colors.mauve })
  set_highlight("@conditional", { fg = colors.mauve })
  set_highlight("@conditional.ternary", { fg = colors.mauve })
  set_highlight("@repeat", { fg = colors.mauve })
  set_highlight("@debug", { fg = colors.pink })
  set_highlight("@label", { fg = colors.mauve })
  set_highlight("@include", { fg = colors.lavender })
  set_highlight("@exception", { fg = colors.mauve })
  set_highlight("@comment", { fg = colors.surface2, italic = true })
  set_highlight("@comment.documentation", { fg = colors.surface2, italic = true })
  set_highlight("@punctuation.delimiter", { fg = colors.subtext0 })
  set_highlight("@punctuation.bracket", { fg = colors.subtext0 })
  set_highlight("@punctuation.special", { fg = colors.pink })
  
  -- LSP highlights
  set_highlight("DiagnosticError", { fg = colors.pink })
  set_highlight("DiagnosticWarn", { fg = colors.peach })
  set_highlight("DiagnosticInfo", { fg = colors.blue })
  set_highlight("DiagnosticHint", { fg = colors.green })
  set_highlight("DiagnosticUnderlineError", { undercurl = true, sp = colors.pink })
  set_highlight("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.peach })
  set_highlight("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
  set_highlight("DiagnosticUnderlineHint", { undercurl = true, sp = colors.green })
  set_highlight("LspReferenceText", { bg = colors.surface1 })
  set_highlight("LspReferenceRead", { bg = colors.surface1 })
  set_highlight("LspReferenceWrite", { bg = colors.surface1 })
  
  -- Diff highlights
  set_highlight("DiffAdd", { fg = colors.green, bg = colors.surface0 })
  set_highlight("DiffChange", { fg = colors.blue, bg = colors.surface0 })
  set_highlight("DiffDelete", { fg = colors.pink, bg = colors.surface0 })
  set_highlight("DiffText", { fg = colors.fg, bg = colors.surface1 })
  
  -- Git highlights
  set_highlight("GitSignsAdd", { fg = colors.green })
  set_highlight("GitSignsChange", { fg = colors.blue })
  set_highlight("GitSignsDelete", { fg = colors.pink })
  set_highlight("GitGutterAdd", { fg = colors.green })
  set_highlight("GitGutterChange", { fg = colors.blue })
  set_highlight("GitGutterDelete", { fg = colors.pink })
  
  -- Telescope highlights
  set_highlight("TelescopeNormal", { fg = colors.fg, bg = "NONE" })
  set_highlight("TelescopeBorder", { fg = colors.pink, bg = "NONE" })
  set_highlight("TelescopePromptNormal", { fg = colors.fg, bg = "NONE" })
  set_highlight("TelescopePromptBorder", { fg = colors.pink, bg = "NONE" })
  set_highlight("TelescopePromptTitle", { fg = colors.pink, bg = "NONE" })
  set_highlight("TelescopePreviewTitle", { fg = colors.pink, bg = "NONE" })
  set_highlight("TelescopeResultsTitle", { fg = colors.pink, bg = "NONE" })
  set_highlight("TelescopeSelection", { fg = colors.bg, bg = colors.pink })
  
  -- WhichKey highlights
  set_highlight("WhichKey", { fg = colors.pink, bg = "NONE" })
  set_highlight("WhichKeyGroup", { fg = colors.blue, bg = "NONE" })
  set_highlight("WhichKeyDesc", { fg = colors.fg, bg = "NONE" })
  set_highlight("WhichKeyBorder", { fg = colors.pink, bg = "NONE" })
  
  -- NeoTree highlights
  set_highlight("NeoTreeNormal", { fg = colors.fg, bg = "NONE" })
  set_highlight("NeoTreeNormalNC", { fg = colors.subtext0, bg = "NONE" })
  set_highlight("NeoTreeFloatBorder", { fg = colors.pink, bg = "NONE" })
  set_highlight("NeoTreeDirectoryIcon", { fg = colors.pink })
  set_highlight("NeoTreeDirectoryName", { fg = colors.fg })
  set_highlight("NeoTreeFileName", { fg = colors.fg })
  set_highlight("NeoTreeGitModified", { fg = colors.pink })
  set_highlight("NeoTreeGitAdded", { fg = colors.green })
  set_highlight("NeoTreeGitDeleted", { fg = colors.mauve })
  
  -- Cmp highlights
  set_highlight("CmpItemAbbr", { fg = colors.fg })
  set_highlight("CmpItemAbbrMatch", { fg = colors.pink, bold = true })
  set_highlight("CmpItemAbbrMatchFuzzy", { fg = colors.pink, bold = true })
  set_highlight("CmpItemKind", { fg = colors.blue })
  set_highlight("CmpItemMenu", { fg = colors.subtext0 })
end

-- Apply the colorscheme
setup()
