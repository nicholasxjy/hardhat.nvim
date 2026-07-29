local M = {}

local function cmp_kinds(hl)
  local kinds = {
    "Array", "Boolean", "Class", "Color", "Constant", "Constructor",
    "Enum", "EnumMember", "Event", "Field", "File", "Folder", "Function",
    "Interface", "Key", "Keyword", "Method", "Module", "Namespace", "Null",
    "Number", "Object", "Operator", "Package", "Property", "Reference",
    "Snippet", "String", "Struct", "Text", "TypeParameter", "Unit",
    "Value", "Variable",
  }
  for _, kind in ipairs(kinds) do
    hl["CmpItemKind" .. kind] = { link = "LspKind" .. kind }
  end
end

function M.get(p, _opts)
  local ret = {
    CmpDocumentation        = { fg = p.fg, bg = p.bg },
    CmpDocumentationBorder  = { fg = p.yellow_dim, bg = p.bg },
    CmpGhostText            = { fg = p.black_light },
    CmpItemAbbr             = { fg = p.fg },
    CmpItemAbbrDeprecated   = { fg = p.black_light, strikethrough = true },
    CmpItemAbbrMatch        = { fg = p.yellow, bold = true },
    CmpItemAbbrMatchFuzzy   = { fg = p.yellow_dim, bold = true },
    CmpItemKindDefault      = { fg = p.white_dim },
    CmpItemKindCopilot      = { fg = p.cyan },
    CmpItemKindCodeium      = { fg = p.cyan },
    CmpItemKindSupermaven   = { fg = p.cyan },
    CmpItemMenu             = { fg = p.black_light },
  }
  cmp_kinds(ret)
  return ret
end

return M
