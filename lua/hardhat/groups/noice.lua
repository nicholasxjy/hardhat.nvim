local M = {}

local function noice_kinds(hl)
  local kinds = {
    "Array", "Boolean", "Class", "Color", "Constant", "Constructor",
    "Enum", "EnumMember", "Event", "Field", "File", "Folder", "Function",
    "Interface", "Key", "Keyword", "Method", "Module", "Namespace", "Null",
    "Number", "Object", "Operator", "Package", "Property", "Reference",
    "Snippet", "String", "Struct", "Text", "TypeParameter", "Unit",
    "Value", "Variable",
  }
  for _, kind in ipairs(kinds) do
    hl["NoiceCompletionItemKind" .. kind] = { link = "LspKind" .. kind }
  end
end

function M.get(p, _opts)
  local ret = {
    NoiceCmdlineIconInput          = { fg = p.yellow },
    NoiceCmdlineIconLua            = { fg = p.blue },
    NoiceCmdlinePopupBorderInput   = { fg = p.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = p.blue },
    NoiceCmdlinePopupTitleInput    = { fg = p.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = p.blue },
    NoiceCompletionItemKindDefault = { fg = p.white_dim },
  }
  noice_kinds(ret)
  return ret
end

return M
