local M = {}

function M.get(p, _opts)
  return {
    FlashBackdrop   = { fg = p.black_light },
    FlashLabel      = { fg = p.black, bg = p.orange, bold = true },
    FlashCurrent    = { fg = p.black, bg = p.yellow, bold = true },
    FlashMatch      = { fg = p.black, bg = p.yellow_dim },
    FlashPrompt     = { fg = p.orange, bg = p.bg_dark },
    FlashPromptIcon = { fg = p.yellow, bg = p.bg_dark },
    FlashCursor     = { fg = p.bg, bg = p.fg },
  }
end

return M
