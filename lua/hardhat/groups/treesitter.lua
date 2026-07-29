local M = {}

function M.get(p, _opts)
  return {
    -- -----------------------------------------------------------------
    -- LITERALS
    -- -----------------------------------------------------------------
    ["@number"]                  = { fg = p.red_light },
    ["@float"]                   = { fg = p.red_light },
    ["@number.float"]            = { link = "@float" },
    ["@boolean"]                 = { fg = p.red_light },

    ["@string"]                  = { fg = p.white_light },
    ["@string.documentation"]    = { fg = p.yellow_dim },
    ["@string.escape"]           = { fg = p.green_light },
    ["@string.special"]          = { fg = p.red },
    ["@string.regexp"]           = { link = "@string.special.regexp" },
    ["@string.special.regexp"]   = { fg = p.red, bold = true },
    ["@string.special.url"]      = { fg = p.cyan, underline = true },
    ["@string.special.symbol"]   = { link = "@constant" },
    ["@string.special.path"]     = { link = "Directory" },

    ["@character"]               = { fg = p.white_light },
    ["@character.special"]       = { link = "SpecialChar" },
    ["@character.printf"]        = { link = "SpecialChar" },

    ["@constant"]                = { fg = p.orange },
    ["@constant.builtin"]        = { fg = p.cyan_dim },
    ["@constant.macro"]          = { link = "Define" },

    -- -----------------------------------------------------------------
    -- IDENTIFIERS
    -- -----------------------------------------------------------------
    ["@variable"]                = { fg = p.fg },
    ["@variable.builtin"]        = { fg = p.cyan_dim },
    ["@variable.parameter"]      = { fg = p.blue_light },
    ["@variable.parameter.builtin"] = { fg = p.cyan_dim, italic = true },
    ["@variable.member"]         = { fg = p.blue },
    ["@property"]                = { fg = p.blue },

    -- Legacy aliases
    ["@parameter"]               = { link = "@variable.parameter" },
    ["@field"]                   = { link = "@variable.member" },

    -- -----------------------------------------------------------------
    -- KEYWORDS
    -- -----------------------------------------------------------------
    ["@keyword"]                 = { fg = p.orange },

    ["@keyword.operator"]        = { fg = p.yellow },
    ["@keyword.conditional"]     = { fg = p.yellow },
    ["@keyword.conditional.ternary"] = { fg = p.yellow },
    ["@keyword.repeat"]          = { fg = p.yellow },

    ["@keyword.type"]            = { link = "Type" },
    ["@keyword.modifier"]        = { fg = p.orange_dim },
    ["@keyword.storage"]         = { link = "StorageClass" },
    ["@keyword.directive"]       = { fg = p.orange_dim },
    ["@keyword.directive.define"] = { link = "@keyword.directive" },

    ["@keyword.function"]        = { fg = p.green_dim },
    ["@keyword.coroutine"]       = { fg = p.green_dim },
    ["@keyword.return"]          = { link = "@keyword" },
    ["@keyword.exception"]       = { fg = p.green_dim },
    ["@keyword.debug"]           = { fg = p.cyan, bold = true },

    ["@keyword.import"]          = { link = "Include" },

    ["@label"]                   = { fg = p.yellow },
    ["@storageclass"]            = { fg = p.orange_dim },

    -- -----------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- -----------------------------------------------------------------
    ["@function"]                = { fg = p.yellow },
    ["@function.method"]         = { fg = p.yellow_dim },
    ["@function.method.call"]    = { link = "@function.method" },

    ["@function.call"]           = { link = "@function" },
    ["@function.macro"]          = { fg = p.yellow_light },
    ["@function.builtin"]        = { fg = p.cyan },

    -- Legacy aliases
    ["@method"]                  = { link = "@function.method" },
    ["@method.call"]             = { link = "@function.method.call" },

    -- -----------------------------------------------------------------
    -- TYPES & STRUCTURE
    -- -----------------------------------------------------------------
    ["@type"]                    = { fg = p.yellow_dim },
    ["@type.definition"]         = { fg = p.yellow },
    ["@type.qualifier"]          = { link = "@keyword" },
    ["@type.builtin"]            = { fg = p.purple },

    ["@constructor"]             = { fg = p.yellow },
    ["@constructor.tsx"]         = { fg = p.blue },
    ["@annotation"]              = { link = "PreProc" },
    ["@attribute"]               = { link = "PreProc" },
    ["@attribute.builtin"]       = { fg = p.purple_dim },

    ["@module"]                  = { fg = p.cyan_dim },
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
    ["@operator"]                = { fg = p.white },

    ["@punctuation.bracket"]     = { fg = p.white_dim },
    ["@punctuation.delimiter"]   = { fg = p.white_dim },
    ["@punctuation.special"]     = { fg = p.blue_dim },
    ["@punctuation.special.markdown"] = { fg = p.orange },
    ["@punctuation"]             = { link = "Delimiter" },

    -- -----------------------------------------------------------------
    -- COMMENTS
    -- -----------------------------------------------------------------
    ["@comment"]                 = { fg = p.black_light },
    ["@comment.documentation"]   = { fg = p.black_light, italic = true },

    ["@comment.todo"]            = { fg = p.blue, bold = true },
    ["@comment.warning"]         = { fg = p.yellow },
    ["@comment.error"]           = { fg = p.red },
    ["@comment.note"]            = { fg = p.cyan },
    ["@comment.hint"]            = { fg = p.cyan },
    ["@comment.info"]            = { fg = p.blue },

    -- -----------------------------------------------------------------
    -- MARKUP
    -- -----------------------------------------------------------------
    ["@markup"]                  = { link = "@none" },
    ["@markup.heading"]          = { fg = p.blue, bold = true },
    ["@markup.heading.1"]        = { fg = p.orange, bold = true },
    ["@markup.heading.2"]        = { fg = p.yellow, bold = true },
    ["@markup.heading.3"]        = { fg = p.green_dim, bold = true },
    ["@markup.heading.4"]        = { fg = p.cyan, bold = true },
    ["@markup.heading.5"]        = { fg = p.blue, bold = true },
    ["@markup.heading.6"]        = { fg = p.blue_dim, bold = true },

    ["@markup.strong"]           = { bold = true },
    ["@markup.italic"]           = { italic = true },
    ["@markup.emphasis"]         = { italic = true },
    ["@markup.strikethrough"]    = { strikethrough = true },
    ["@markup.underline"]        = { underline = true },

    ["@markup.raw"]              = { fg = p.yellow_dim },
    ["@markup.raw.block"]        = { link = "@markup.raw" },
    ["@markup.raw.markdown_inline"] = { fg = p.blue, bg = p.accent1 },
    ["@markup.quote"]            = { link = "@string.special" },
    ["@markup.math"]             = { link = "@string.special" },
    ["@markup.environment"]      = { link = "Macro" },

    ["@markup.link"]             = { fg = p.cyan, underline = true },
    ["@markup.link.label"]       = { fg = p.blue },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup.link.url"]         = { fg = p.cyan_light, underline = true },

    ["@markup.list"]             = { fg = p.red },
    ["@markup.list.markdown"]    = { fg = p.orange, bold = true },
    ["@markup.list.checked"]     = { link = "DiagnosticOk" },
    ["@markup.list.unchecked"]   = { link = "DiagnosticWarn" },

    -- -----------------------------------------------------------------
    -- DIFF
    -- -----------------------------------------------------------------
    ["@diff.plus"]               = { link = "diffAdded" },
    ["@diff.minus"]              = { link = "diffRemoved" },
    ["@diff.delta"]              = { link = "diffChanged" },

    -- -----------------------------------------------------------------
    -- HTML / TAGS
    -- -----------------------------------------------------------------
    ["@tag"]                     = { fg = p.orange },
    ["@tag.delimiter"]           = { fg = p.white_dim },
    ["@tag.attribute"]           = { link = "@property" },
    ["@tag.qualifier"]           = { fg = p.cyan_dim },
    ["@tag.builtin"]             = { fg = p.orange_dim },
    ["@tag.tsx"]                 = { fg = p.cyan, bold = true },
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
