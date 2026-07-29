local M = {}

function M.get(p, _opts)
  return {
    LazyProgressDone  = { fg = p.green, bold = true },
    LazyProgressTodo  = { fg = p.black_light, bold = true },
    LazyButton        = { fg = p.fg, bg = p.accent1 },
    LazyButtonActive  = { fg = p.black, bg = p.yellow, bold = true },
    LazyH1            = { fg = p.black, bg = p.orange, bold = true },
    LazyH2            = { fg = p.yellow, bold = true },
    LazySpecial       = { fg = p.cyan },
    LazyReasonPlugin  = { fg = p.white_dim },
    LazyReasonStart   = { fg = p.green },
    LazyReasonEvent   = { fg = p.blue },
    LazyReasonKeys    = { fg = p.orange },
    LazyReasonFt      = { fg = p.purple },
    LazyReasonCmd     = { fg = p.yellow_dim },
    LazyReasonImport  = { fg = p.cyan },
    LazyReasonSource  = { fg = p.green_dim },
    LazyReasonRuntime = { fg = p.white_dim },
    LazyNoCond        = { fg = p.black_light },
    LazyDimmed        = { fg = p.black_light },
    LazyComment       = { fg = p.black_light },
    LazyCommit        = { fg = p.green },
    LazyCommitType    = { fg = p.orange },
    LazyLocal         = { fg = p.yellow_dim },
    LazyUrl           = { fg = p.cyan, underline = true },
  }
end

return M
