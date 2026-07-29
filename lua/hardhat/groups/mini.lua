local M = {}

function M.get(p, _opts)
  return {
    MiniClueBorder                = { fg = p.yellow_dim, bg = p.bg_dark },
    MiniClueDescGroup             = { fg = p.blue },
    MiniClueDescSingle            = { fg = p.fg },
    MiniClueNextKey               = { fg = p.orange, bold = true },
    MiniClueNextKeyWithPostkeys   = { fg = p.yellow, bold = true },
    MiniClueSeparator             = { fg = p.black_light },
    MiniClueTitle                 = { fg = p.yellow, bg = p.bg_dark, bold = true },

    MiniCursorword                = { bg = p.accent1 },
    MiniCursorwordCurrent         = { bg = p.accent2 },

    MiniFilesBorder               = { fg = p.yellow_dim, bg = p.bg_dark },
    MiniFilesBorderModified       = { fg = p.orange, bg = p.bg_dark },
    MiniFilesCursorLine           = { bg = p.accent1 },
    MiniFilesDirectory            = { fg = p.blue },
    MiniFilesFile                 = { fg = p.fg },
    MiniFilesNormal               = { fg = p.fg, bg = p.bg_dark },
    MiniFilesTitle                = { fg = p.white_dim, bg = p.bg_dark },
    MiniFilesTitleFocused         = { fg = p.yellow, bg = p.bg_dark, bold = true },

    MiniHipatternsFixme           = { fg = p.black, bg = p.red, bold = true },
    MiniHipatternsHack            = { fg = p.black, bg = p.orange, bold = true },
    MiniHipatternsNote            = { fg = p.black, bg = p.blue, bold = true },
    MiniHipatternsTodo            = { fg = p.black, bg = p.yellow, bold = true },

    MiniIndentscopePrefix         = { nocombine = true },
    MiniIndentscopeSymbol         = { fg = p.yellow_dim, nocombine = true },

    MiniJump                      = { fg = p.black, bg = p.yellow, bold = true },
    MiniJump2dDim                 = { fg = p.black_light },
    MiniJump2dSpot                = { fg = p.black, bg = p.orange, bold = true },
    MiniJump2dSpotAhead           = { fg = p.black, bg = p.yellow_dim, bold = true },
    MiniJump2dSpotUnique          = { fg = p.black, bg = p.green, bold = true },

    MiniMapNormal                 = { fg = p.fg, bg = p.bg_dark },
    MiniMapSymbolCount            = { fg = p.orange, bg = p.bg_dark },
    MiniMapSymbolLine             = { fg = p.blue, bg = p.bg_dark },
    MiniMapSymbolView             = { fg = p.yellow, bg = p.bg_dark },

    MiniNotifyBorder              = { fg = p.yellow_dim, bg = p.bg_dark },
    MiniNotifyNormal              = { fg = p.fg, bg = p.bg_dark },
    MiniNotifyTitle               = { fg = p.yellow, bg = p.bg_dark, bold = true },

    MiniPickBorder                = { fg = p.yellow_dim, bg = p.bg_dark },
    MiniPickBorderBusy            = { fg = p.orange, bg = p.bg_dark },
    MiniPickBorderText            = { fg = p.yellow, bg = p.bg_dark, bold = true },
    MiniPickHeader                = { fg = p.orange, bold = true },
    MiniPickIconDirectory         = { fg = p.blue },
    MiniPickIconFile              = { fg = p.fg },
    MiniPickMatchCurrent          = { bg = p.accent2 },
    MiniPickMatchMarked           = { fg = p.black, bg = p.yellow_dim, bold = true },
    MiniPickMatchRanges           = { fg = p.orange, bold = true },
    MiniPickNormal                = { fg = p.fg, bg = p.bg_dark },
    MiniPickPreviewLine           = { bg = p.accent1 },
    MiniPickPreviewRegion         = { bg = p.accent2 },
    MiniPickPrompt                = { fg = p.fg, bg = p.bg_dark },
    MiniPickPromptCaret           = { fg = p.orange, bg = p.bg_dark, bold = true },

    MiniStarterCurrent            = { bg = p.accent1 },
    MiniStarterFooter             = { fg = p.black_light, italic = true },
    MiniStarterHeader             = { fg = p.yellow, bold = true },
    MiniStarterInactive           = { fg = p.black_light },
    MiniStarterItem               = { fg = p.fg },
    MiniStarterItemBullet         = { fg = p.orange },
    MiniStarterItemPrefix         = { fg = p.yellow_dim },
    MiniStarterQuery              = { fg = p.green, bold = true },
    MiniStarterSection            = { fg = p.blue, bold = true },

    MiniStatuslineDevinfo         = { fg = p.black, bg = p.blue, bold = true },
    MiniStatuslineFileinfo        = { fg = p.black, bg = p.cyan, bold = true },
    MiniStatuslineFilename        = { fg = p.fg, bg = p.accent2 },
    MiniStatuslineInactive        = { fg = p.black_light, bg = p.accent1 },
    MiniStatuslineModeCommand     = { fg = p.black, bg = p.orange, bold = true },
    MiniStatuslineModeInsert      = { fg = p.black, bg = p.green, bold = true },
    MiniStatuslineModeNormal      = { fg = p.black, bg = p.yellow, bold = true },
    MiniStatuslineModeOther       = { fg = p.black, bg = p.purple, bold = true },
    MiniStatuslineModeReplace     = { fg = p.black, bg = p.red, bold = true },
    MiniStatuslineModeVisual      = { fg = p.black, bg = p.blue, bold = true },

    MiniTablineCurrent            = { fg = p.black, bg = p.yellow, bold = true },
    MiniTablineFill               = { bg = p.bg_dark },
    MiniTablineHidden             = { fg = p.fg, bg = p.accent1 },
    MiniTablineModifiedCurrent    = { fg = p.black, bg = p.orange, bold = true },
    MiniTablineModifiedHidden     = { fg = p.orange, bg = p.accent1 },
    MiniTablineModifiedVisible    = { fg = p.orange, bg = p.accent2 },
    MiniTablineTabpagesection     = { fg = p.black, bg = p.blue, bold = true },
    MiniTablineVisible            = { fg = p.fg, bg = p.accent2 },

    MiniTestEmphasis              = { bold = true },
    MiniTestFail                  = { fg = p.red, bold = true },
    MiniTestPass                  = { fg = p.green, bold = true },

    MiniTrailspace                = { bg = p.red_dim },
  }
end

return M
