local M = {}

function M.get(p, _opts)
  return {
    --              >>> UI Elements <<<
    Normal                   = { fg = p.fg, bg = p.bg },
    NormalNC                 = { fg = p.fg, bg = p.bg },
    NormalFloat              = { fg = p.fg, bg = p.bg },
    NormalSB                 = { fg = p.white_dim, bg = p.bg_dark },

    SignColumn               = { fg = p.fg, bg = p.bg },
    SignColumnSB             = { fg = p.black_light, bg = p.bg_dark },
    Folded                   = { fg = p.black_light, bg = p.bg_dark },
    FoldColumn               = { fg = p.black_light, bg = p.bg },
    EndOfBuffer              = { fg = p.bg, bg = p.bg },
    Conceal                  = { fg = p.black_light },

    FloatBorder              = { fg = p.yellow_dim, bg = p.bg },
    FloatTitle               = { fg = p.yellow, bg = p.bg_dark, bold = true },

    Cursor                   = { fg = p.bg, bg = p.fg },
    lCursor                  = { fg = p.bg, bg = p.fg },
    CursorIM                 = { fg = p.bg, bg = p.fg },
    CursorLine               = { bg = p.accent1 },
    CursorColumn             = { bg = p.accent1 },
    CursorLineFold           = { fg = p.accent3 },
    CursorLineSign           = { fg = p.accent3 },
    ColorColumn              = { bg = p.accent1 },

    MatchParen               = { bg = p.accent2, bold = true },

    LineNr                   = { fg = p.black_light },
    LineNrAbove              = { link = "LineNr" },
    LineNrBelow              = { link = "LineNr" },
    CursorLineNr             = { fg = p.yellow_dim, bold = true },

    VertSplit                = { fg = p.bg_dark, bg = p.bg },
    WinSeparator             = { fg = p.bg_dark, bg = p.bg },

    WinBar                   = { fg = p.white_light, bg = p.bg },
    WinBarNC                 = { fg = p.white_light, bg = p.bg },

    StatusLine               = { fg = p.fg, bg = p.bg_dark },
    StatusLineNC             = { fg = p.black_light, bg = p.bg_dark },

    TabLine                  = { fg = p.white_dim, bg = p.bg_dark },
    TabLineFill              = { link = "TabLine" },
    TabLineSel               = { fg = p.yellow, bg = p.bg_dark },

    QuickFixLine             = { fg = p.cyan },
    qfFileName               = { fg = p.blue },
    qfLineNr                 = { fg = p.black_light },

    Search                   = { fg = p.black, bg = p.yellow },
    IncSearch                = { fg = p.black, bg = p.orange },
    CurSearch                = { fg = p.black, bg = p.orange },
    Substitute               = { fg = p.black, bg = p.blue },
    Visual                   = { bg = p.accent2 },
    VisualNOS                = { bg = p.accent1 },

    Directory                = { fg = p.white },
    Question                 = { fg = p.red },
    SpecialKey               = { fg = p.cyan_dim },
    WildMenu                 = { fg = p.white_light, bg = p.bg_light },
    Title                    = { fg = p.yellow, bold = true },
    MsgArea                  = { fg = p.fg },

    Pmenu                    = { fg = p.white_light, bg = p.bg_light },
    PmenuSel                 = { fg = p.black, bg = p.yellow },
    PmenuMatch               = { fg = p.yellow_dim, bg = p.bg_light, bold = true },
    PmenuMatchSel            = { fg = p.black, bg = p.yellow, bold = true },
    PmenuSbar                = { bg = p.bg_dark },
    PmenuThumb               = { bg = p.black_light },
    PmenuBorder              = { fg = p.yellow_dim, bg = p.bg },

    TermCursor               = { reverse = true },
    TermCursorNC             = { reverse = true },

    Whitespace               = { fg = p.accent3 },
    NonText                  = { fg = p.black_light },

    --              >>> Debug <<<
    debugBreakpoint          = { fg = p.blue, bold = true },
    debugPC                  = { bg = p.accent1 },

    --              >>> Health <<<
    healthError              = { fg = p.red },
    healthSuccess            = { fg = p.green },
    healthWarning            = { fg = p.yellow },

    --              >>> Help <<<
    helpCommand              = { fg = p.blue, bg = p.bg_light },

    --              >>> Std Syntax <<<
    Comment                  = { fg = p.black_light },
    Constant                 = { fg = p.orange },
    String                   = { fg = p.white_light },
    Character                = { fg = p.white_light },
    Number                   = { fg = p.red_light },
    Boolean                  = { fg = p.red_light },
    Float                    = { fg = p.red_light },

    Identifier               = { fg = p.fg },
    Function                 = { fg = p.green },

    Statement                = { fg = p.orange },
    Conditional              = { fg = p.yellow },
    Repeat                   = { fg = p.yellow },
    Label                    = { fg = p.red_dim },
    Operator                 = { fg = p.white },
    Keyword                  = { fg = p.orange },
    Exception                = { fg = p.red },

    Include                  = { fg = p.red_dim },
    PreProc                  = { fg = p.orange },
    Define                   = { fg = p.orange },
    PreCondit                = { fg = p.orange },
    Macro                    = { fg = p.orange_light },

    Type                     = { fg = p.yellow_dim },
    StorageClass             = { fg = p.yellow_dim },
    Structure                = { fg = p.yellow_dim },
    Typedef                  = { fg = p.orange },

    Special                  = { fg = p.orange },
    SpecialChar              = { fg = p.blue_light },
    SpecialComment           = { link = "Special" },
    Tag                      = { fg = p.orange },
    Delimiter                = { fg = p.white_dim },
    Debug                    = { fg = p.red },

    Bold                     = { bold = true },
    Italic                   = { italic = true },
    Underlined               = { underline = true },
    Ignore                   = { fg = p.black },
    Error                    = { fg = p.red, bold = true },
    Todo                     = { fg = p.blue, bold = true },

    --              >>> Diffs <<<
    Added                    = { fg = p.green_dim },
    Changed                  = { fg = p.yellow_dim },
    Removed                  = { fg = p.red_dim },
    DiffAdd                  = { fg = p.green_dim, bg = p.bg_dark },
    DiffChange               = { fg = p.yellow_dim, bg = p.bg_dark },
    DiffDelete               = { fg = p.red_dim, bg = p.bg_dark },
    DiffText                 = { fg = p.cyan_dim, bg = p.bg_dark },

    --              >>> Patch diff <<<
    diffAdded                = { fg = p.green_dim },
    diffChanged              = { fg = p.yellow_dim },
    diffRemoved              = { fg = p.red_dim },
    diffFile                 = { fg = p.yellow },
    diffLine                 = { fg = p.blue },
    diffOldFile              = { fg = p.red_dim },
    diffNewFile              = { fg = p.green_dim },
    diffIndexLine            = { fg = p.purple },

    --              >>> Git commit <<<
    gitcommitBranch          = { fg = p.orange, bold = true },
    gitcommitComment         = { link = "Comment" },
    gitcommitDiscarded       = { link = "Comment" },
    gitcommitDiscardedFile   = { fg = p.yellow, bold = true },
    gitcommitDiscardedType   = { fg = p.blue },
    gitcommitHeader          = { fg = p.yellow, bold = true },
    gitcommitOverflow        = { fg = p.yellow },
    gitcommitSelected        = { link = "Comment" },
    gitcommitSelectedFile    = { fg = p.green, bold = true },
    gitcommitSelectedType    = { link = "gitcommitDiscardedType" },
    gitcommitSummary         = { fg = p.green },
    gitcommitUnmergedFile    = { link = "gitcommitDiscardedFile" },
    gitcommitUnmergedType    = { link = "gitcommitDiscardedType" },
    gitcommitUntracked       = { link = "Comment" },
    gitcommitUntrackedFile   = { fg = p.cyan },

    --              >>> Messages <<<
    ErrorMsg                 = { fg = p.red },
    WarningMsg               = { fg = p.yellow },
    OkMsg                    = { fg = p.green },
    ModeMsg                  = { fg = p.yellow_light },
    MoreMsg                  = { fg = p.green_light },

    --              >>> Built-in diagnostics <<<
    DiagnosticError          = { fg = p.red },
    DiagnosticWarn           = { fg = p.yellow },
    DiagnosticInfo           = { fg = p.blue },
    DiagnosticHint           = { fg = p.cyan },
    DiagnosticOk             = { fg = p.green },
    DiagnosticUnnecessary    = { link = "Comment" },
    DiagnosticDeprecated     = { sp = p.red, strikethrough = true },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = p.blue, undercurl = true },
    DiagnosticUnderlineHint  = { sp = p.cyan, undercurl = true },
    DiagnosticUnderlineOk    = { sp = p.green, undercurl = true },

    DiagnosticFloatingError  = { fg = p.red, bg = p.bg_dark },
    DiagnosticFloatingWarn   = { fg = p.yellow, bg = p.bg_dark },
    DiagnosticFloatingInfo   = { fg = p.blue, bg = p.bg_dark },
    DiagnosticFloatingHint   = { fg = p.cyan, bg = p.bg_dark },
    DiagnosticFloatingOk     = { fg = p.green, bg = p.bg_dark },

    DiagnosticVirtualTextError = { fg = p.red, bg = p.bg_dark },
    DiagnosticVirtualTextWarn  = { fg = p.yellow, bg = p.bg_dark },
    DiagnosticVirtualTextInfo  = { fg = p.blue, bg = p.bg_dark },
    DiagnosticVirtualTextHint  = { fg = p.cyan, bg = p.bg_dark },
    DiagnosticVirtualTextOk    = { fg = p.green, bg = p.bg_dark },

    DiagnosticSignError      = { link = "DiagnosticError" },
    DiagnosticSignWarn       = { link = "DiagnosticWarn" },
    DiagnosticSignInfo       = { link = "DiagnosticInfo" },
    DiagnosticSignHint       = { link = "DiagnosticHint" },
    DiagnosticSignOk         = { link = "DiagnosticOk" },

    --              >>> Built-in LSP <<<
    LspReferenceText             = { bg = p.accent2 },
    LspReferenceRead             = { link = "LspReferenceText" },
    LspReferenceWrite            = { link = "LspReferenceText" },
    LspSignatureActiveParameter  = { link = "LspReferenceText" },
    LspCodeLens                  = { link = "Comment" },
    LspCodeLensSeparator         = { link = "Comment" },
    LspInlayHint                 = { fg = p.black_light, italic = true },
    LspInfoBorder                = { fg = p.yellow_dim, bg = p.bg },

    --              >>> Built-in markdown syntax <<<
    markdownH1               = { link = "@markup.heading.1" },
    markdownH2               = { link = "@markup.heading.2" },
    markdownH3               = { link = "@markup.heading.3" },
    markdownH4               = { link = "@markup.heading.4" },
    markdownH5               = { link = "@markup.heading.5" },
    markdownH6               = { link = "@markup.heading.6" },

    --              >>> Built-in snippets <<<
    SnippetTabstop           = { bg = p.accent2 },
    SnippetTabstopActive     = { bg = p.bg_light },

    --              >>> Spelling <<<
    SpellBad                 = { sp = p.red_light, undercurl = true },
    SpellCap                 = { sp = p.yellow_light, undercurl = true },
    SpellRare                = { sp = p.cyan_light, undercurl = true },
    SpellLocal               = { sp = p.green_light, undercurl = true },
  }
end

return M
