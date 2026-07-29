local M = {}

function M.get(p, _opts)
  return {
    -- Notifier
    SnacksNotifierDebug        = { fg = p.fg, bg = p.bg },
    SnacksNotifierBorderDebug  = { fg = p.black_light, bg = p.bg },
    SnacksNotifierIconDebug    = { fg = p.black_light },
    SnacksNotifierTitleDebug   = { fg = p.black_light },
    SnacksNotifierError        = { fg = p.fg, bg = p.bg },
    SnacksNotifierBorderError  = { fg = p.red_dim, bg = p.bg },
    SnacksNotifierIconError    = { fg = p.red },
    SnacksNotifierTitleError   = { fg = p.red },
    SnacksNotifierInfo         = { fg = p.fg, bg = p.bg },
    SnacksNotifierBorderInfo   = { fg = p.blue_dim, bg = p.bg },
    SnacksNotifierIconInfo     = { fg = p.blue },
    SnacksNotifierTitleInfo    = { fg = p.blue },
    SnacksNotifierTrace        = { fg = p.fg, bg = p.bg },
    SnacksNotifierBorderTrace  = { fg = p.purple_dim, bg = p.bg },
    SnacksNotifierIconTrace    = { fg = p.purple },
    SnacksNotifierTitleTrace   = { fg = p.purple },
    SnacksNotifierWarn         = { fg = p.fg, bg = p.bg },
    SnacksNotifierBorderWarn   = { fg = p.yellow_dim, bg = p.bg },
    SnacksNotifierIconWarn     = { fg = p.yellow },
    SnacksNotifierTitleWarn    = { fg = p.yellow },

    -- Dashboard
    SnacksDashboardDesc        = { fg = p.white_dim },
    SnacksDashboardFooter      = { fg = p.black_light, italic = true },
    SnacksDashboardHeader      = { fg = p.orange },
    SnacksDashboardIcon        = { fg = p.yellow },
    SnacksDashboardKey         = { fg = p.orange },
    SnacksDashboardSpecial     = { fg = p.purple },
    SnacksDashboardDir         = { fg = p.black_light },

    -- Indent
    SnacksIndent               = { fg = p.accent2, nocombine = true },
    SnacksIndentScope          = { fg = p.yellow_dim, nocombine = true },

    -- Input
    SnacksInputIcon            = { fg = p.blue },
    SnacksInputBorder          = { fg = p.yellow },
    SnacksInputTitle           = { fg = p.yellow },

    -- Picker
    SnacksPickerInputBorder    = { fg = p.orange, bg = p.bg },
    SnacksPickerInputTitle     = { fg = p.orange, bg = p.bg },
    SnacksPickerBoxTitle       = { fg = p.orange, bg = p.bg },
    SnacksPickerSelected       = { fg = p.orange },
    SnacksPickerPickWinCurrent = { fg = p.fg, bg = p.orange, bold = true },
    SnacksPickerPickWin        = { fg = p.fg, bg = p.accent2, bold = true },

    -- Zen
    SnacksZenIcon              = { fg = p.purple },
  }
end

return M
