local M = {}

function M.get(p, _opts)
  return {
    --              >>> UI Elements <<<
    Normal                   = { fg = p.fg, bg = p.bg },
    NormalNC                 = { fg = p.fg, bg = p.bg },
    NormalFloat              = { fg = p.fg, bg = p.bg },
    NormalSB                 = { fg = p.white_dim, bg = p.bg_dark },

    SignColumn               = { fg = p.black_light, bg = p.bg },
    SignColumnSB             = { fg = p.black_light, bg = p.bg_dark },
    Folded                   = { fg = p.blue, bg = p.accent1 },
    FoldColumn               = { fg = p.black_light, bg = p.bg },
    EndOfBuffer              = { fg = p.bg },
    Conceal                  = { fg = p.black_light },

    FloatBorder              = { fg = p.yellow_dim, bg = p.bg },
    FloatTitle               = { fg = p.yellow_dim, bg = p.bg },

    Cursor                   = { fg = p.bg, bg = p.fg },
    lCursor                  = { fg = p.bg, bg = p.fg },
    CursorIM                 = { fg = p.bg, bg = p.fg },
    CursorLine               = { bg = p.bg_light },
    CursorColumn             = { bg = p.bg_light },
    CursorLineFold           = { fg = p.accent3 },
    CursorLineSign           = { fg = p.accent3 },
    ColorColumn              = { bg = p.black },

    MatchParen               = { fg = p.orange, bold = true },

    LineNr                   = { fg = p.black_light },
    LineNrAbove              = { link = "LineNr" },
    LineNrBelow              = { link = "LineNr" },
    CursorLineNr             = { fg = p.orange, bold = true },

    VertSplit                = { fg = p.accent1 },
    WinSeparator             = { fg = p.accent1, bold = true },

    WinBar                   = { link = "StatusLine" },
    WinBarNC                 = { link = "StatusLineNC" },

    StatusLine               = { fg = p.white_dim, bg = p.bg_dark },
    StatusLineNC             = { fg = p.black_light, bg = p.bg_dark },

    TabLine                  = { fg = p.black_light, bg = p.bg_dark },
    TabLineFill              = { bg = p.black },
    TabLineSel               = { fg = p.black, bg = p.blue },

    QuickFixLine             = { bg = p.accent2, bold = true },
    qfFileName               = { fg = p.blue },
    qfLineNr                 = { fg = p.black_light },

    Search                   = { bg = p.accent2, fg = p.fg },
    IncSearch                = { fg = p.black, bg = p.orange },
    CurSearch                = { link = "IncSearch" },
    Substitute               = { bg = p.red, fg = p.black },
    Visual                   = { bg = p.accent2 },
    VisualNOS                = { bg = p.accent2 },

    Directory                = { fg = p.blue },
    Question                 = { fg = p.blue },
    SpecialKey               = { fg = p.accent3 },
    WildMenu                 = { bg = p.accent2 },
    Title                    = { fg = p.blue, bold = true },
    MsgArea                  = { fg = p.white_dim },

    Pmenu                    = { fg = p.fg, bg = p.bg_light },
    PmenuSel                 = { bg = p.accent2 },
    PmenuMatch               = { fg = p.blue_light, bg = p.bg_light },
    PmenuMatchSel            = { fg = p.blue_light, bg = p.accent2 },
    PmenuSbar                = { bg = p.bg_light },
    PmenuThumb               = { bg = p.black_light },
    PmenuBorder              = { fg = p.yellow_dim, bg = p.bg },

    TermCursor               = { reverse = true },
    TermCursorNC             = { reverse = true },

    Whitespace               = { fg = p.black_light },
    NonText                  = { fg = p.accent3 },

    --              >>> Debug <<<
    debugBreakpoint          = { fg = p.blue },
    debugPC                  = { bg = p.bg_dark },

    --              >>> Health <<<
    healthError              = { fg = p.red },
    healthSuccess            = { fg = p.green_dim },
    healthWarning            = { fg = p.yellow },

    --              >>> Help <<<
    helpCommand              = { fg = p.blue, bg = p.accent1 },
    helpExample              = { fg = p.black_light },

    --              >>> HTML <<<
    htmlH1                   = { fg = p.purple, bold = true },
    htmlH2                   = { fg = p.blue, bold = true },

    --              >>> INI / dosini <<<
    dosIniLabel              = { link = "@property" },

    --              >>> Std Syntax <<<
    Comment                  = { fg = p.black_light },
    Constant                 = { fg = p.orange },
    String                   = { fg = p.green },
    Character                = { fg = p.green },
    Number                   = { fg = p.red_light },
    Boolean                  = { fg = p.red_light },
    Float                    = { fg = p.red_light },

    Identifier               = { fg = p.purple },
    Function                 = { fg = p.blue },

    Statement                = { fg = p.purple },
    Conditional              = { link = "Keyword" },
    Repeat                   = { link = "Keyword" },
    Label                    = { fg = p.blue },
    Operator                 = { fg = p.white_dim },
    Keyword                  = { fg = p.cyan },
    Exception                = { link = "Keyword" },

    Include                  = { fg = p.cyan },
    PreProc                  = { fg = p.cyan },
    Define                   = { fg = p.cyan },
    PreCondit                = { fg = p.cyan },
    Macro                    = { fg = p.orange_light },

    Type                     = { fg = p.blue_light },
    StorageClass             = { fg = p.blue_light },
    Structure                = { fg = p.blue_light },
    Typedef                  = { link = "@type.definition" },

    Special                  = { fg = p.blue_light },
    SpecialChar              = { link = "Special" },
    SpecialComment           = { link = "Special" },
    Tag                      = { link = "Label" },
    Delimiter                = { link = "Special" },
    Debug                    = { fg = p.orange },

    Bold                     = { bold = true, fg = p.fg },
    Italic                   = { italic = true, fg = p.fg },
    Underlined               = { underline = true },
    Ignore                   = { fg = p.black_light },
    Error                    = { fg = p.red },
    Todo                     = { bg = p.yellow, fg = p.black },

    --              >>> Diffs <<<
    Added                    = { fg = p.green_dim },
    Changed                  = { fg = p.yellow_dim },
    Removed                  = { fg = p.red_dim },
    DiffAdd                  = { bg = p.bg_dark },
    DiffChange               = { bg = p.bg_dark },
    DiffDelete               = { bg = p.bg_dark },
    DiffText                 = { bg = p.accent1 },

    --              >>> Patch diff <<<
    diffAdded                = { bg = p.bg_dark, fg = p.green_dim },
    diffChanged              = { bg = p.bg_dark, fg = p.yellow_dim },
    diffRemoved              = { bg = p.bg_dark, fg = p.red_dim },
    diffFile                 = { fg = p.blue },
    diffLine                 = { fg = p.black_light },
    diffOldFile              = { fg = p.blue_light, bg = p.bg_dark },
    diffNewFile              = { fg = p.blue_light, bg = p.bg_dark },
    diffIndexLine            = { fg = p.purple },

    --              >>> Git commit <<<
    gitcommitBranch          = { fg = p.orange },
    gitcommitComment         = { link = "Comment" },
    gitcommitDiscarded       = { link = "Comment" },
    gitcommitDiscardedFile   = { fg = p.yellow },
    gitcommitDiscardedType   = { fg = p.blue },
    gitcommitHeader          = { fg = p.yellow },
    gitcommitOverflow        = { fg = p.yellow },
    gitcommitSelected        = { link = "Comment" },
    gitcommitSelectedFile    = { fg = p.green },
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
    ModeMsg                  = { fg = p.white_dim, bold = true },
    MoreMsg                  = { fg = p.blue },

    --              >>> Built-in diagnostics <<<
    DiagnosticError          = { fg = p.red },
    DiagnosticWarn           = { fg = p.yellow },
    DiagnosticInfo           = { fg = p.blue },
    DiagnosticHint           = { fg = p.cyan },
    DiagnosticOk             = { fg = p.green },
    DiagnosticUnnecessary    = { fg = p.accent1 },
    DiagnosticDeprecated     = { sp = p.red, strikethrough = true },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = p.blue, undercurl = true },
    DiagnosticUnderlineHint  = { sp = p.cyan, undercurl = true },
    DiagnosticUnderlineOk    = { sp = p.green, undercurl = true },

    DiagnosticFloatingError  = { fg = p.red },
    DiagnosticFloatingWarn   = { fg = p.yellow },
    DiagnosticFloatingInfo   = { fg = p.blue },
    DiagnosticFloatingHint   = { fg = p.cyan },
    DiagnosticFloatingOk     = { fg = p.green },

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
    LspReferenceText             = { bg = p.black_light },
    LspReferenceRead             = { bg = p.black_light },
    LspReferenceWrite            = { bg = p.black_light },
    LspSignatureActiveParameter  = { bg = p.accent2 },
    LspCodeLens                  = { fg = p.black_light },
    LspCodeLensSeparator         = { fg = p.black_light },
    LspInlayHint                 = { fg = p.accent3, bg = p.accent1 },
    LspInfoBorder                = { fg = p.yellow_dim, bg = p.bg },
    ComplHint                    = { fg = p.accent1 },

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
    SpellBad                 = { sp = p.red, undercurl = true },
    SpellCap                 = { sp = p.yellow, undercurl = true },
    SpellRare                = { sp = p.cyan, undercurl = true },
    SpellLocal               = { sp = p.blue, undercurl = true },
  }
end

return M
