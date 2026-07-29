local M = {}

local function navic_kinds(hl)
  local kinds = {
    "Array", "Boolean", "Class", "Color", "Constant", "Constructor",
    "Enum", "EnumMember", "Event", "Field", "File", "Folder", "Function",
    "Interface", "Key", "Keyword", "Method", "Module", "Namespace", "Null",
    "Number", "Object", "Operator", "Package", "Property", "Reference",
    "Snippet", "String", "Struct", "Text", "TypeParameter", "Unit",
    "Value", "Variable",
  }
  for _, kind in ipairs(kinds) do
    hl["NavicIcons" .. kind] = { link = "LspKind" .. kind }
  end
end

function M.get(p, _opts)
  local ret = {
    NavicSeparator = { fg = p.fg },
    NavicText      = { fg = p.fg },
  }
  navic_kinds(ret)
  return ret
end

return M
