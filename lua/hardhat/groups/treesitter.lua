local M = {}

function M.get(p, _opts)
  return {
    -- -----------------------------------------------------------------
    -- LITERALS
    -- -----------------------------------------------------------------
    ["@number"]                  = { link = "Number" },
    ["@float"]                   = { link = "Float" },
    ["@number.float"]            = { link = "Float" },
    ["@boolean"]                 = { link = "Boolean" },

    ["@string"]                  = { link = "String" },
    ["@string.documentation"]    = { fg = p.yellow },
    ["@string.escape"]           = { fg = p.purple },
    ["@string.special"]          = { link = "Special" },
    ["@string.regexp"]           = { fg = p.blue_dim },
    ["@string.special.regexp"]   = { fg = p.blue_dim },
    ["@string.special.url"]      = { link = "Underlined" },
    ["@string.special.symbol"]   = { link = "@constant" },
    ["@string.special.path"]     = { link = "Directory" },

    ["@character"]               = { link = "Character" },
    ["@character.special"]       = { link = "SpecialChar" },
    ["@character.printf"]        = { link = "SpecialChar" },

    ["@constant"]                = { link = "Constant" },
    ["@constant.builtin"]        = { link = "Special" },
    ["@constant.macro"]          = { link = "Define" },

    -- -----------------------------------------------------------------
    -- IDENTIFIERS
    -- -----------------------------------------------------------------
    ["@variable"]                = { fg = p.fg },
    ["@variable.builtin"]        = { fg = p.red },
    ["@variable.parameter"]      = { fg = p.yellow },
    ["@variable.parameter.builtin"] = { fg = p.yellow_dim },
    ["@variable.member"]         = { fg = p.green_dim },
    ["@property"]                = { fg = p.green_dim },

    -- Legacy aliases
    ["@parameter"]               = { link = "@variable.parameter" },
    ["@field"]                   = { link = "@variable.member" },

    -- -----------------------------------------------------------------
    -- KEYWORDS
    -- -----------------------------------------------------------------
    ["@keyword"]                 = { link = "Keyword" },

    ["@keyword.operator"]        = { link = "@operator" },
    ["@keyword.conditional"]     = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },
    ["@keyword.repeat"]          = { link = "Repeat" },

    ["@keyword.type"]            = { link = "Type" },
    ["@keyword.modifier"]        = { link = "StorageClass" },
    ["@keyword.storage"]         = { link = "StorageClass" },
    ["@keyword.directive"]       = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },

    ["@keyword.function"]        = { fg = p.purple },
    ["@keyword.coroutine"]       = { link = "@keyword" },
    ["@keyword.return"]          = { link = "@keyword" },
    ["@keyword.exception"]       = { link = "Exception" },
    ["@keyword.debug"]           = { link = "Debug" },

    ["@keyword.import"]          = { link = "Include" },

    ["@label"]                   = { fg = p.blue },
    ["@storageclass"]            = { link = "StorageClass" },

    -- -----------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- -----------------------------------------------------------------
    ["@function"]                = { link = "Function" },
    ["@function.method"]         = { link = "Function" },
    ["@function.method.call"]    = { link = "@function.method" },

    ["@function.call"]           = { link = "@function" },
    ["@function.macro"]          = { link = "Macro" },
    ["@function.builtin"]        = { link = "Special" },

    -- Legacy aliases
    ["@method"]                  = { link = "@function.method" },
    ["@method.call"]             = { link = "@function.method.call" },

    -- -----------------------------------------------------------------
    -- TYPES & STRUCTURE
    -- -----------------------------------------------------------------
    ["@type"]                    = { link = "Type" },
    ["@type.definition"]         = { link = "Typedef" },
    ["@type.qualifier"]          = { link = "@keyword" },
    ["@type.builtin"]            = { fg = p.blue_dim },

    ["@constructor"]             = { fg = p.purple },
    ["@constructor.tsx"]         = { fg = p.blue },
    ["@annotation"]              = { link = "PreProc" },
    ["@attribute"]               = { link = "PreProc" },
    ["@attribute.builtin"]       = { fg = p.purple_dim },

    ["@module"]                  = { link = "Include" },
    ["@module.builtin"]          = { fg = p.red },
    ["@namespace.builtin"]       = { link = "@variable.builtin" },

    -- Legacy aliases
    ["@namespace"]               = { link = "@module" },
    ["@structure"]               = { link = "Structure" },
    ["@include"]                 = { link = "Include" },
    ["@preproc"]                 = { link = "PreProc" },
    ["@define"]                  = { link = "Define" },
    ["@macro"]                   = { link = "Macro" },
    ["@debug"]                   = { link = "Debug" },

    -- -----------------------------------------------------------------
    -- OPERATORS & PUNCTUATION
    -- -----------------------------------------------------------------
    ["@operator"]                = { fg = p.white_dim },

    ["@punctuation.bracket"]     = { fg = p.white_dim },
    ["@punctuation.delimiter"]   = { fg = p.white_dim },
    ["@punctuation.special"]     = { fg = p.white_dim },
    ["@punctuation.special.markdown"] = { fg = p.orange },
    ["@punctuation"]             = { link = "Delimiter" },

    -- -----------------------------------------------------------------
    -- COMMENTS
    -- -----------------------------------------------------------------
    ["@comment"]                 = { link = "Comment" },
    ["@comment.documentation"]   = { fg = p.black_light, italic = true },

    ["@comment.todo"]            = { fg = p.blue },
    ["@comment.warning"]         = { fg = p.yellow },
    ["@comment.error"]           = { fg = p.red },
    ["@comment.note"]            = { fg = p.cyan },
    ["@comment.hint"]            = { fg = p.cyan },
    ["@comment.info"]            = { fg = p.blue },

    -- -----------------------------------------------------------------
    -- MARKUP
    -- -----------------------------------------------------------------
    ["@markup"]                  = { link = "@none" },
    ["@markup.heading"]          = { link = "Title" },
    ["@markup.heading.1"]        = { fg = p.orange },
    ["@markup.heading.2"]        = { fg = p.yellow },
    ["@markup.heading.3"]        = { fg = p.green_dim },
    ["@markup.heading.4"]        = { fg = p.cyan },
    ["@markup.heading.5"]        = { fg = p.blue },
    ["@markup.heading.6"]        = { fg = p.blue_dim },

    ["@markup.strong"]           = { bold = true },
    ["@markup.italic"]           = { italic = true },
    ["@markup.emphasis"]         = { italic = true },
    ["@markup.strikethrough"]    = { strikethrough = true },
    ["@markup.underline"]        = { underline = true },

    ["@markup.raw"]              = { link = "String" },
    ["@markup.raw.block"]        = { link = "@markup.raw" },
    ["@markup.raw.markdown_inline"] = { fg = p.blue, bg = p.accent1 },
    ["@markup.quote"]            = { link = "Special" },
    ["@markup.math"]             = { link = "Special" },
    ["@markup.environment"]      = { link = "Macro" },

    ["@markup.link"]             = { fg = p.cyan },
    ["@markup.link.label"]       = { link = "SpecialChar" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup.link.url"]         = { link = "Underlined" },

    ["@markup.list"]             = { fg = p.blue_dim },
    ["@markup.list.markdown"]    = { fg = p.orange, bold = true },
    ["@markup.list.checked"]     = { fg = p.green_dim },
    ["@markup.list.unchecked"]   = { fg = p.blue },

    -- -----------------------------------------------------------------
    -- DIFF
    -- -----------------------------------------------------------------
    ["@diff.plus"]               = { link = "diffAdded" },
    ["@diff.minus"]              = { link = "diffRemoved" },
    ["@diff.delta"]              = { link = "diffChanged" },

    -- -----------------------------------------------------------------
    -- HTML / TAGS
    -- -----------------------------------------------------------------
    ["@tag"]                     = { link = "Label" },
    ["@tag.delimiter"]           = { link = "Delimiter" },
    ["@tag.attribute"]           = { link = "@property" },
    ["@tag.qualifier"]           = { fg = p.cyan_dim },
    ["@tag.builtin"]             = { link = "Special" },
    ["@tag.tsx"]                 = { fg = p.red },
    ["@tag.delimiter.tsx"]       = { fg = p.blue_dim },
    ["@tag.javascript"]          = { fg = p.red },

    -- -----------------------------------------------------------------
    -- MISC
    -- -----------------------------------------------------------------
    ["@symbol"]                  = { link = "Keyword" },
    ["@none"]                    = {},

    -- -----------------------------------------------------------------
    -- LEGACY @text.* groups (pre-0.10 compat)
    -- -----------------------------------------------------------------
    ["@text.literal"]            = { link = "Special" },
    ["@text.reference"]          = { link = "Identifier" },
    ["@text.title"]              = { link = "Title" },
    ["@text.uri"]                = { underline = true },
    ["@text.todo"]               = { link = "Todo" },
    ["@text.note"]               = { link = "MoreMsg" },
    ["@text.warning"]            = { link = "WarningMsg" },
    ["@text.danger"]             = { link = "ErrorMsg" },
    ["@text.strong"]             = { bold = true },
    ["@text.emphasis"]           = { italic = true },
    ["@text.strike"]             = { strikethrough = true },
    ["@text.underline"]          = { underline = true },
  }
end

return M
