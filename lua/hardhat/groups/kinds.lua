-- LspKind* highlights used by completion plugins (cmp, blink, etc.)
local M = {}

local kinds = {
  Array         = "@punctuation.bracket",
  Boolean       = "@boolean",
  Class         = "@type",
  Color         = "Special",
  Constant      = "@constant",
  Constructor   = "@constructor",
  Enum          = "@lsp.type.enum",
  EnumMember    = "@lsp.type.enumMember",
  Event         = "Special",
  Field         = "@variable.member",
  File          = "Normal",
  Folder        = "Directory",
  Function      = "@function",
  Interface     = "@lsp.type.interface",
  Key           = "@variable.member",
  Keyword       = "@lsp.type.keyword",
  Method        = "@function.method",
  Module        = "@module",
  Namespace     = "@module",
  Null          = "@constant.builtin",
  Number        = "@number",
  Object        = "@constant",
  Operator      = "@operator",
  Package       = "@module",
  Property      = "@property",
  Reference     = "@markup.link",
  Snippet       = "Conceal",
  String        = "@string",
  Struct        = "@lsp.type.struct",
  Text          = "Normal",
  TypeParameter = "@lsp.type.typeParameter",
  Unit          = "@lsp.type.struct",
  Value         = "@string",
  Variable      = "@variable",
}

function M.get(_p, _opts)
  local hl = {}
  for kind, link in pairs(kinds) do
    hl["LspKind" .. kind] = { link = link }
  end
  return hl
end

return M
