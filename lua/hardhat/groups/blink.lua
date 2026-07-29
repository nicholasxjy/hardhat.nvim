local M = {}

local function blink_kinds(hl)
  local kinds = {
    "Array", "Boolean", "Class", "Color", "Constant", "Constructor",
    "Enum", "EnumMember", "Event", "Field", "File", "Folder", "Function",
    "Interface", "Key", "Keyword", "Method", "Module", "Namespace", "Null",
    "Number", "Object", "Operator", "Package", "Property", "Reference",
    "Snippet", "String", "Struct", "Text", "TypeParameter", "Unit",
    "Value", "Variable",
  }
  for _, kind in ipairs(kinds) do
    hl["BlinkCmpKind" .. kind] = { link = "LspKind" .. kind }
  end
end

function M.get(p, _opts)
  local ret = {
    BlinkCmpDoc                 = { fg = p.fg, bg = p.bg },
    BlinkCmpDocBorder           = { fg = p.yellow_dim, bg = p.bg },
    BlinkCmpDocSeparator        = { fg = p.yellow_dim, bg = p.bg },
    BlinkCmpGhostText           = { fg = p.black_light },
    BlinkCmpKindDefault         = { fg = p.white_dim },
    BlinkCmpKindCopilot         = { fg = p.cyan },
    BlinkCmpKindCodeium         = { fg = p.cyan },
    BlinkCmpKindSupermaven      = { fg = p.cyan },
    BlinkCmpLabel               = { fg = p.fg },
    BlinkCmpLabelDeprecated     = { fg = p.black_light, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = p.yellow, bold = true },
    BlinkCmpMenu                = { fg = p.fg, bg = p.bg_light },
    BlinkCmpMenuBorder          = { fg = p.yellow_dim, bg = p.bg },
    BlinkCmpMenuSelection       = { fg = p.black, bg = p.yellow },
    BlinkCmpSignatureHelp       = { fg = p.fg, bg = p.bg },
    BlinkCmpSignatureHelpBorder = { fg = p.yellow_dim, bg = p.bg },
  }
  blink_kinds(ret)
  return ret
end

return M
