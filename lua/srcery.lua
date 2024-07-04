-- Theme: z
-- Author: rhcher
-- License: MIT
-- Source code from https://github.com/glepnir/zephyr-nvim
-- colors from https://github.com/srcery-colors/srcery-vim

local z = {
  black = "#1C1B19",
  red = "#EF2F27",
  dim_red = "#830f0a",
  green = "#519F50",
  yellow = "#FBB829",
  blue = "#2C78BF",
  dim_blue = "#0087af",
  magenta = "#E02C6D",
  cyan = "#0AAEB3",
  white = "#BAA67F",
  bright_black = "#918175",
  bright_red = "#F75341",
  bright_green = "#98BC37",
  bright_yellow = "#FED06E",
  bright_blue = "#68A8E4",
  bright_magenta = "#FF5C8F",
  bright_cyan = "#2BE4D0",
  bright_white = "#FCE8C3",
  orange = "#FF5F00",
  bright_orange = "#FF8700",
  hard_black = "#121212",
  xgray1 = "#262626",
  xgray2 = "#303030",
  xgray3 = "#3A3A3A",
  xgray4 = "#444444",
  xgray5 = "#4E4E4E",
  xgray6 = "#585858",
  none = "NONE",
}

function z.terminal_color()
  vim.g.terminal_color_0 = z.black
  vim.g.terminal_color_8 = z.bright_black

  vim.g.terminal_color_1 = z.red
  vim.g.terminal_color_9 = z.bright_red

  vim.g.terminal_color_2 = z.green
  vim.g.terminal_color_10 = z.bright_green

  vim.g.terminal_color_3 = z.yellow
  vim.g.terminal_color_11 = z.bright_yellow

  vim.g.terminal_color_4 = z.blue
  vim.g.terminal_color_12 = z.bright_blue

  vim.g.terminal_color_5 = z.magenta
  vim.g.terminal_color_13 = z.bright_magenta

  vim.g.terminal_color_6 = z.cyan
  vim.g.terminal_color_14 = z.bright_cyan

  vim.g.terminal_color_7 = z.white
  vim.g.terminal_color_15 = z.bright_white
end

local syntax = {
  Normal = { fg = z.bright_white, bg = z.none },
  CursorLine = { bg = z.xgray2 },
  CursorColumn = { bg = z.xgray2 },
  Tabline = { fg = z.bright_black, bg = z.xgray2 },
  TablineFill = { fg = z.bright_black, bg = z.xgray2 },
  TabLineSel = { fg = z.bright_white, bg = z.xgray5 },
  MatchParen = { fg = z.bright_blue, bg = z.none, bold = true },
  ColorColumn = { fg = z.none, bg = z.xgray2 },
  Conceal = { fg = z.blue, bg = z.none },
  CursorLineNr = { fg = z.yellow, bg = z.black },
  NonText = { fg = z.xgray4 },
  SpecialKey = { fg = z.blue },
  Visual = { fg = z.none, bg = z.xgray5 },
  VisualNOS = { fg = z.none, bg = z.xgray5 },
  Search = { fg = z.none, bg = z.xgray5, bold = true },
  IncSearch = { fg = z.none, bg = z.xgray5, underline = true, bold = true },
  Underlined = { fg = z.blue, bg = z.none, underline = true },
  StatusLine = { fg = z.bright_white, bg = z.xgray2 },
  StatusLineNC = { fg = z.bright_black, bg = z.black, underline = true },
  VertSplit = { fg = z.bright_white, bg = z.black },
  WildMenu = { fg = z.blue, bg = z.black, bold = true },
  Directory = { fg = z.green, bg = z.none, bold = true },
  Title = { fg = z.green, bg = z.none, bold = true },
  ErrorMsg = { fg = z.red, bg = z.none, bold = true },
  MoreMsg = { fg = z.yellow, bg = z.none, bold = true },
  ModeMsg = { fg = z.yellow, bg = z.none, bold = true },
  Question = { fg = z.orange, bg = z.none, bold = true },
  WarningMsg = { fg = z.red, bg = z.none },
  LineNr = { fg = z.bright_black },
  SignColumn = { fg = z.none, bg = z.black },
  Folded = { fg = z.bright_black, bg = z.black, italic = true },
  FoldColumn = { fg = z.bright_black, bg = z.black },
  Cursor = { fg = z.black, bg = z.yellow },
  vCursor = { link = "Cursor" },
  iCursor = { link = "Cursor" },
  lCursor = { link = "Cursor" },
  -- CursorIM = { bg = z.none, reverse = true },

  WinBar = { fg = z.orange},

  Special = { fg = z.orange },
  SpecialChar = { fg = z.yellow },
  SpecialComment = { fg = z.grey },
  Comment = { fg = z.bright_black, bg = z.none, italic = true },
  Todo = { fg = z.bright_white, bg = z.black, bold = true, italic = true },
  Error = { fg = z.red, bg = z.none, bold = true },
  String = { fg = z.bright_green },

  Statement = { fg = z.red },
  Conditional = { fg = z.red },
  Repeat = { fg = z.red },
  Label = { fg = z.red },
  Exception = { fg = z.red },
  Operator = { fg = z.white },
  Keyword = { fg = z.red },

  Identifier = { fg = z.cyan },
  Function = { fg = z.yellow },
  PreProc = { fg = z.cyan },
  Include = { fg = z.blue },
  Define = { fg = z.cyan },
  Macro = { fg = z.orange },
  PreCondit = { fg = z.cyan },

  Constant = { fg = z.bright_magenta },
  Character = { fg = z.bright_magenta },
  Boolean = { fg = z.bright_magenta },
  Number = { fg = z.bright_magenta },
  Float = { fg = z.bright_magenta },

  Type = { fg = z.bright_blue },
  Typedef = { fg = z.magenta },
  StorageClass = { fg = z.orange },
  Structure = { fg = z.cyan },
  Delimiter = { fg = z.xgray6 },

  Pmenu = { fg = z.bright_white, bg = z.none },
  PmenuSel = { fg = z.bright_white, bg = z.blue, bold = true },
  PmenuSelBold = { fg = z.base0, bg = z.blue },
  PmenuSbar = { fg = z.none, bg = z.xgray1 },
  PmenuThumb = { fg = z.none, bg = z.xgray6 },

  DiffDelete = { fg = z.red, bg = z.black },
  DiffAdd = { fg = z.green, bg = z.black },
  DiffChange = { fg = z.green, bg = z.black },
  DiffText = { fg = z.black, bg = z.green },

  SpellCap = { fg = z.green, bg = z.none, bold = true, italic = true },
  SpellBad = { fg = z.none, bg = z.none, undercurl = true, sp = z.blue },
  SpellLocal = { fg = z.none, bg = z.none, undercurl = true, sp = z.cyan },
  SpellRare = { fg = z.none, bg = z.none, undercurl = true, sp = z.magenta },

  Terminal = { fg = z.bright_white, bg = z.hard_black },

  FloatBorder = { fg = z.yellow },

  -- EndOfBuffer = { fg = z.bg, bg = z.none },
  -- Whitespace = { fg = z.base4 },
  -- NormalFloat = { fg = z.base8, bg = z.bg_highlight },
  -- QuickFixLine = { fg = z.violet, bold = true },
  -- Debug = { fg = z.orange },
  -- debugBreakpoint = { fg = z.bg, bg = z.red },
  --
  -- Tag = { fg = z.orange },
  --
  -- Ignore = { fg = z.grey },
  --
  -- DashboardShortCut = { fg = z.magenta },
  -- DashboardHeader = { fg = z.orange },
  -- DashboardCenter = { fg = z.teal },
  -- DashboardCenterIcon = { fg = z.blue },
  -- DashboardFooter = { fg = z.yellow, bold = true },
}

local plugin_syntax = {
  LspDiagnosticsDefaultError = { fg = z.bright_red, bg = z.none },
  LspDiagnosticsDefaultWarning = { fg = z.bright_yellow, bg = z.none },
  LspDiagnosticsDefaultInformation = { fg = z.bright_green, bg = z.none },
  LspDiagnosticsDefaultHint = { fg = z.bright_cyan, bg = z.none },

  LspDiagnosticsUnderlineError = { fg = z.bright_red, bg = z.none, underline = true },
  LspDiagnosticsUnderlineWarning = { fg = z.bright_yellow, bg = z.none, underline = true },
  LspDiagnosticsUnderlineInformation = { fg = z.bright_green, bg = z.none, underline = true },
  LspDiagnosticsUnderlineHint = { fg = z.bright_cyan, bg = z.none, underline = true },

  LspCodeLens = { fg = z.bright_black, bg = z.none },
  LspCodeLensSeparator = { fg = z.bright_black, bg = z.none },

  LspReferenceText = { fg = z.none, bg = z.xgray5, underline = true },
  LspReferenceRead = { fg = z.bright_white, bg = z.dim_blue, underline = true },
  LspReferenceWrite = { fg = z.bright_white, bg = z.dim_red, underline = true },

  IlluminatedWordText = { link = "LspReferenceText" },
  IlluminatedWordRead = { link = "LspReferenceRead" },
  IlluminatedWordWrite = { link = "LspReferenceWrite" },

  TelescopeNormal = { fg = z.white, bg = z.none },
  TelescopeSelection = { fg = z.green, bg = z.none, bold = true },
  TelescopeMatching = { fg = z.magenta },
  TelescopeSelectionCaret = { fg = z.magenta },
  TelescopePromptPrefix = { fg = z.bright_yellow },

  ["@variable"]              = { fg = z.white },
  ["@variable.member"]       = { fg = z.green, bg = z.none },
  ["@variable.builtin"]      = { fg = z.cyan },

  -- ["@function.builtin"] = { fg = z.yellow },
  ["@constant"]              = { fg = z.cyan },
  ["@constant.builtin"]      = { fg = z.cyan },

  ["@string.symbol"]         = { fg = z.blue },
  ["@string.special.url"]    = { fg = z.green },
  -- ["@text.uri"]              = { fg = z.green },

  ["@function"]              = { fg = z.yellow },
  ["@function.method"]       = { fg = z.yellow },
  ["@function.macro"]        = { fg = z.orange },
  -- ["@Strong"]                = { fg = z.none, bg = z.none, bold = true },
  -- ["@Emphasis"]              = { fg = z.none, bg = z.none, bold = true },
  -- ["@Underline"]             = { fg = z.none, bg = z.none, underline = true },
  -- ["@Warning"]               = { fg = z.orange, bg = z.none, bold = true },
  -- ["@Danger"]                = { fg = z.red, bg = z.none, bold = true },
  ["@namespace"]             = { fg = "#BBBB00", bg = z.none, italic = true },
  ["@parameter"]             = { fg = z.cyan, bg = z.none },
  ["@property"]              = { fg = z.bright_white },
  ["@tag"]                   = { fg = z.blue },
  ["@tag.attribute"]         = { fg = z.yellow },
  ["@type"]                  = { link = "Type" },
  ["@punctuation.delimiter"] = { fg = z.white },
  ["@constructor"]           = { fg = z.yellow },
  ["@class"]                 = { link = "Type" },
  ["@struct"]                = { link = "Type" },

  ["@lsp.type.variable"]     = { link = "@variable" },
  ["@lsp.type.parameter"]     = { link = "@parameter" },
  ["@lsp.type.property"]     = { link = "@property" },
  ["@lsp.type.namespace"]     = { link = "@namespace" },
  ["@lsp.type.class"]     = { link = "@class" },
  ["@lsp.type.macro"]     = { link = "Macro" },

  ["@lsp.type.property.lua"]     = { fg = z.bright_blue },

  ["@lsp.type.enum.cpp"] = { link = "Type" },
  ["@lsp.type.enumMember.cpp"] = { fg = "#AD7FA8" },
  ["@lsp.type.namespace.cpp"] = { fg = "#BBBB00" },
  ["@lsp.type.comment.cpp"]     = { link = "Comment" },

  vimCommentTitle = { fg = z.bright_white, bold = true, italic = true },
  vimNotation = { fg = z.yellow },
  vimBracket = { fg = z.yellow },
  vimMapModKey = { fg = z.yellow },
  vimFuncSID = { fg = z.bright_white },
  vimSetSep = { fg = z.bright_white },
  vimSep = { fg = z.bright_white },
  vimContinue = { fg = z.bright_white },

  schemeParentheses = { fg = z.xgray6 },
  clojureParen = { fg = z.xgray6 },
  clojureKeyword = { fg = z.blue },
  clojureCond = { fg = z.red },
  clojureSpecial = { fg = z.red },
  clojureDefine = { fg = z.red },

  clojureFunc = { fg = z.yellow },
  clojureRepeat = { fg = z.yellow },
  clojureCharacter = { fg = z.yellow },
  clojureStringEscape = { fg = z.cyan },
  clojureException = { fg = z.red },

  clojureRegexp = { fg = z.cyan },
  clojureRegexpEscape = { fg = z.cyan },
  clojureRegexpCharClass = { fg = z.bright_white, bg = z.none, bold = true },
  clojureRegexpMod = { link = "clojureRegexpCharClass" },
  clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },

  clojureAnonArg = { fg = z.yellow },
  clojureVariable = { fg = z.blue },
  clojureMacro = { fg = z.orange, bold = true },

  clojureMeta = { fg = z.yellow },
  clojureDeref = { fg = z.yellow },
  clojureQuote = { fg = z.yellow },
  clojureUnquote = { fg = z.yellow },

  -- C
  cOperator = { fg = z.magenta },
  cStructure = { fg = z.red },

  -- Python
  pythonBuiltin = { fg = z.yellow },
  pythonBuiltinObj = { fg = z.yellow },
  pythonBuiltinFunc = { fg = z.yellow },
  pythonFunction = { fg = z.cyan },
  pythonDecorator = { fg = z.red },
  pythonInclude = { fg = z.red },
  pythonImport = { fg = z.blue },
  pythonRun = { fg = z.blue },
  pythonCoding = { fg = z.blue },
  pythonOperator = { fg = z.red },
  pythonExceptions = { fg = z.magenta },
  pythonBoolean = { fg = z.magenta },
  pythonDot = { fg = z.bright_white },

  -- lua
  luaIn = { fg = z.red },
  luaFunction = { fg = z.red },
  luaTable = { fg = z.yellow },
  luaOperator = { fg = z.bright_red },

  -- markdown
  markdownH1 = { fg = z.bright_blue, bold = true },
  markdownH2 = { fg = z.bright_blue, bold = true },
  markdownH3 = { fg = z.bright_yellow, bold = true },
  markdownH4 = { fg = z.bright_yellow, bold = true },
  markdownH5 = { fg = z.yellow, bold = true },
  markdownH6 = { fg = z.yellow, bold = true },

  markdownCode = { fg = z.white },
  markdownCodeBlock = { fg = z.white },
  markdownCodeDelimiter = { fg = z.white },

  markdownBlockquote = { fg = z.bright_black },
  markdownListMarker = { fg = z.bright_black },
  markdownOrderedListMarker = { fg = z.bright_black },
  markdownRule = { fg = z.bright_black },
  markdownHeadingRule = { fg = z.bright_black },

  markdownUrlDelimiter = { fg = z.bright_black },
  markdownLinkDelimiter = { fg = z.bright_black },
  markdownLinkTextDelimiter = { fg = z.bright_black },

  markdownHeadingDelimiter = { fg = z.bright_black },
  markdownUrl = { fg = z.bright_green },
  markdownUrlTitleDelimiter = { fg = z.green },

  markdownLinkText = { fg = z.bright_white, underline = true },
  markdownIdDeclaration = { link = "markdownLinkText" },

  -- haskell
  haskellType = { fg = z.blue },
  haskellIdentifier = { fg = z.orange },
  haskellSeparator = { fg = z.blue },
  haskellDelimiter = { fg = z.bright_white },
  haskellOperators = { fg = z.white },

  haskellBacktick = { fg = z.yellow },
  haskellStatement = { fg = z.yellow },
  haskellConditional = { fg = z.yellow },

  haskellLet = { fg = z.cyan },
  haskellDefault = { fg = z.cyan },
  haskellWhere = { fg = z.cyan },
  haskellBottom = { fg = z.cyan },
  haskellBlockKeywords = { fg = z.cyan },
  haskellImportKeywords = { fg = z.cyan },
  haskellDeclKeyword = { fg = z.cyan },
  haskellDeriving = { fg = z.cyan },
  haskellAssocType = { fg = z.cyan },

  haskellNumber = { fg = z.magenta },
  haskellPragma = { fg = z.green },
  haskellString = { fg = z.green },
  haskellChar = { fg = z.green },

  -- Json
  jsonKeyword = { fg = z.green },
  jsonQuote = { fg = z.green },
  jsonBraces = { fg = z.blue },
  jsonString = { fg = z.blue },

  -- rust
  rustCommentLineDoc = { fg = z.green },
  rustModPathSep = { fg = z.bright_black },

  -- Make
  makePreCondit = { fg = z.red },
  makeCommands = { fg = z.bright_white },
  makeTarget = { fg = z.yellow },

  -- shell script
  shParenError = { fg = z.bright_white, bg = z.none },
  shCmdSubRegion = { fg = z.white },
  shArithRegion = { fg = z.white },
  shQuote = { fg = z.white },
  shRedir = { fg = z.magenta },
  shOption = { fg = z.bright_yellow },
  shCommandSub = { fg = z.bright_red },

  -- vimCommentTitle = { fg = z.grey, bold = true },
  -- vimLet = { fg = z.orange },
  -- vimVar = { fg = z.cyan },
  -- vimFunction = { fg = z.redwine },
  -- vimIsCommand = { fg = z.fg },
  -- vimCommand = { fg = z.blue },
  -- vimNotFunc = { fg = z.violet, bold = true },
  -- vimUserFunc = { fg = z.yellow, bold = true },
  -- vimFuncName = { fg = z.yellow, bold = true },

  diffAdded = { fg = z.green },
  diffRemoved = { fg = z.red },
  diffChanged = { fg = z.cyan },
  -- diffOldFile = { fg = z.orange },
  diffNewFile = { fg = z.yellow },
  diffFile = { fg = z.orange },
  diffLine = { fg = z.blue },
  -- diffIndexLine = { fg = z.violet },

  -- gitcommitSummary = { fg = z.red },
  -- gitcommitUntracked = { fg = z.grey },
  -- gitcommitDiscarded = { fg = z.grey },
  -- gitcommitSelected = { fg = z.grey },
  -- gitcommitUnmerged = { fg = z.grey },
  -- gitcommitOnBranch = { fg = z.grey },
  -- gitcommitArrow = { fg = z.grey },
  -- gitcommitFile = { fg = z.dark_green },

  -- VistaBracket = { fg = z.grey },
  -- VistaChildrenNr = { fg = z.orange },
  -- VistaKind = { fg = z.violet },
  -- VistaScope = { fg = z.red },
  -- VistaScopeKind = { fg = z.blue },
  -- VistaTag = { fg = z.magenta, bold = true },
  -- VistaPrefix = { fg = z.grey },
  -- VistaColon = { fg = z.magenta },
  -- VistaIcon = { fg = z.yellow },
  -- VistaLineNr = { fg = z.fg },

  -- GitGutterAdd = { fg = z.dark_green },
  -- GitGutterChange = { fg = z.blue },
  -- GitGutterDelete = { fg = z.red },
  -- GitGutterChangeDelete = { fg = z.violet },

  GitSignsAdd = { link = "DiffAdd" },
  GitSignsChange = { link = "DiffChange" },
  GitSignsChangeDelete = { link = "DiffChange" },
  GitSignsDelete = { link = "DiffDelete" },
  GitSignsTopdelete = { link = "DiffDelete" },
  -- GitSignsAddNr = { link = "Gitsi" },
  -- GitSignsChangeNr = { fg = z.blue },
  -- GitSignsDeleteNr = { fg = z.red },
  -- GitSignsAddLn = { bg = z.bg_popup },
  -- GitSignsChangeLn = { bg = z.bg_highlight },
  -- GitSignsDeleteLn = { bg = z.bg1 },

  -- SignifySignAdd = { fg = z.dark_green },
  -- SignifySignChange = { fg = z.blue },
  -- SignifySignDelete = { fg = z.red },

  -- dbui_tables = { fg = z.blue },

  -- CursorWord = { bg = z.base4, underline = true },

  -- NvimTreeFolderName = { fg = z.blue },
  -- NvimTreeRootFolder = { fg = z.red, bold = true },
  -- NvimTreeSpecialFile = { fg = z.fg, bg = z.none },
  -- NvimTreeGitDirty = { fg = z.redwine },

  -- TelescopeBorder = { fg = z.teal },
  -- TelescopePromptBorder = { fg = z.blue },
  -- TelescopeMatching = { fg = z.teal },
  -- TelescopeSelection = { fg = z.yellow, bg = z.bg_highlight, bold = true },
  -- TelescopeSelectionCaret = { fg = z.yellow },
  -- TelescopeMultiSelection = { fg = z.teal },

  -- -- nvim v0.6.0+
  -- DiagnosticSignError = { fg = z.red },
  -- DiagnosticSignWarn = { fg = z.yellow },
  -- DiagnosticSignInfo = { fg = z.blue },
  -- DiagnosticSignHint = { fg = z.cyan },

  -- DiagnosticError = { fg = z.red },
  -- DiagnosticWarn = { fg = z.yellow },
  -- DiagnosticInfo = { fg = z.blue },
  -- DiagnosticHint = { fg = z.cyan },

  -- DiagnosticVirtualTextError = { fg = z.red },
  -- DiagnosticVirtualTextWarn = { fg = z.yellow },
  -- DiagnosticVirtualTextInfo = { fg = z.blue },
  -- DiagnosticVirtualTextHint = { fg = z.cyan },

  -- DiagnosticUnderlineError = { undercurl = true, sp = z.red },
  -- DiagnosticUnderlineWarn = { undercurl = true, sp = z.yellow },
  -- DiagnosticUnderlineInfo = { undercurl = true, sp = z.blue },
  -- DiagnosticUnderlineHint = { undercurl = true, sp = z.cyan },

  -- nvim-cmp
  CmpItemAbbr = { fg = z.bright_black },
  CmpItemAbbrDeprecated = { fg = z.bright_black, bg = z.none, strikethrough = true },
  CmpItemAbbrMatch = { fg = z.bright_white },
  CmpItemMenu = { fg = z.white },
  CmpItemKind = { fg = z.yellow },
  CmpItemAbbrMatchFuzzy = { fg = z.bright_green },
  -- CmpItemKindVariable = { fg = z.blue },
  -- CmpItemKindFiled = { fg = z.magenta },
  -- CmpItemKindFunction = { fg = z.yellow },
  -- CmpItemKindClass = { fg = z.orange },
  -- CmpItemKindMethod = { fg = z.teal },
  -- CmpItemKindKeyWord = { fg = z.red },
  -- CmpItemKindText = { fg = z.light_green },
  -- CmpItemKindModule = { fg = z.cyan },

  MatchWord = { fg = z.none, bg = z.none },

  LspCxxHlGroupEnumConstant = { fg = "#AD7FA8" },
  LspCxxHlGroupNamespace = { fg = "#BBBB00" },
  LspCxxHlGroupMemberVariable = { fg = z.bright_white },

  LspCxxHlSymUnknown = { link = "Normal" },

  -- ccls Type
  LspCxxHlSymClass = { link = "Type" },
  LspCxxHlSymStruct = { link = "Type" },
  LspCxxHlSymEnum = { link = "Type" },
  LspCxxHlSymTypeAlias = { link = "Type" },
  LspCxxHlSymTypeParameter = { link = "Type" },
  -- ccls Function
  LspCxxHlSymFunction = { link = "Function" },
  LspCxxHlSymMethod = { link = "Function" },
  LspCxxHlSymStaticMethod = { link = "Function" },
  LspCxxHlSymConstructor = { link = "Function" },
  -- ccls EnumConstant
  LspCxxHlSymEnumMember = { link = "LspCxxHlGroupEnumConstant" },
  -- ccls Preprocessor
  LspCxxHlSymMacro = { link = "Macro" },
  -- ccls Namespace
  LspCxxHlSymNamespace = { link = "LspCxxHlGroupNamespace" },
  -- ccls Variables
  LspCxxHlSymVariable = { fg = z.white },
  LspCxxHlSymParameter = { link = "Identifier" },
  LspCxxHlSymField = { link = "LspCxxHlGroupMemberVariable" },

  ExtraWhitespace = { bg = z.red },

  LspNamespace = { fg = "#BBBB00" },
  LspType = { link = "Type" },
  LspClass = { link = "Type" },
  LspEnum = { link = "Type" },
  LspInterface = { link = "Type" },
  LspStruct = { link = "Type" },
  LspTypeParameter = { link = "Type" },

  LspVariable = { link = "LspCxxHlSymVariable" },
  LspEnumMember = { link = "LspCxxHlGroupEnumConstant" },
  LspMacro = { link = "Macro" },
  LspKeyword = { link = "Keyword" },
  LspComment = { link = "Comment" },
  LspString = { link = "String" },
  LspNumber = { link = "Number" },
  LspOperator = { link = "Operator" },
  LspProperty = { link = "LspCxxHlGroupMemberVariable" },
  LspVariableReadOnly = { link = "Constant" },

  LspFunction = { link = "Function" },
  LspMethod = { link = "Function" },

  LspParameter = { link = "Identifier" },
  LspRegexp = { link = "clojureRegexp" },
  LspStatic = { link = "Normal" },
  LspDeprecated = { strikethrough = true },

  -- Neogit
  -- NeogitDiffAddHighlight = { fg = z.green },
  -- NeogitDiffDeleteHighlight = { fg = z.red },
  -- NeogitDiffContextHighlight = { fg = z.blue },
  -- NeogitHunkHeader = { fg = z.fg },
  -- NeogitHunkHeaderHighlight = { fg = z.redwine },
}

local set_hl = function(tbl)
  for group, conf in pairs(tbl) do
    vim.api.nvim_set_hl(0, group, conf)
  end
end

function z.colorscheme()
  vim.api.nvim_command("hi clear")

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "srcery"
  set_hl(syntax)
  z.terminal_color()
  set_hl(plugin_syntax)
end

z.colorscheme()

return z
