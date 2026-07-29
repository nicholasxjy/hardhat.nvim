local M = {}

function M.get(p, _opts)
  return {
    -- ---------------------------------------------------------------------------
    -- LITERALS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.boolean"]                      = "@boolean",
    ["@lsp.type.number"]                       = "@number",

    ["@lsp.type.string"]                       = "@string",
    ["@lsp.typemod.string.injected"]           = "@string",

    ["@lsp.type.regexp"]                       = "@string.special.regexp",
    ["@lsp.type.escapeSequence"]               = "@string.escape",
    ["@lsp.type.formatSpecifier"]              = "@markup.list",

    -- ---------------------------------------------------------------------------
    -- IDENTIFIERS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
    ["@lsp.type.property"]                     = "@property",
    ["@lsp.type.parameter"]                    = "@variable.parameter",

    ["@lsp.typemod.variable.callable"]         = "@function",
    ["@lsp.typemod.variable.static"]           = "@constant",
    ["@lsp.typemod.variable.defaultLibrary"]   = "@variable.builtin",
    ["@lsp.typemod.variable.injected"]         = "@variable",

    -- ---------------------------------------------------------------------------
    -- KEYWORDS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.keyword"]                      = "@keyword",
    ["@lsp.typemod.keyword.async"]             = "@keyword.coroutine",
    ["@lsp.typemod.keyword.injected"]          = "@keyword",

    ["@lsp.type.modifier"]                     = "@keyword.modifier",

    ["@lsp.type.operator"]                     = "@operator",
    ["@lsp.typemod.operator.injected"]         = "@operator",

    -- ---------------------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.function"]                     = "@function",
    ["@lsp.type.method"]                       = "@function.method",

    ["@lsp.typemod.function.defaultLibrary"]   = "@function.builtin",
    ["@lsp.typemod.method.defaultLibrary"]     = "@function.builtin",

    -- ---------------------------------------------------------------------------
    -- TYPES
    -- ---------------------------------------------------------------------------
    ["@lsp.type.struct"]                       = "@type",
    ["@lsp.type.class"]                        = "@type",
    ["@lsp.type.namespace"]                    = "@module",
    ["@lsp.type.namespace.python"]             = "@variable",
    ["@lsp.type.event"]                        = "@property",

    ["@lsp.type.enum"]                         = "@type",
    ["@lsp.type.enumMember"]                   = "@constant",

    ["@lsp.type.type"]                         = "@type",
    ["@lsp.type.typeAlias"]                    = "@type.definition",
    ["@lsp.type.typeParameter"]                = { fg = p.purple_light },
    ["@lsp.type.generic"]                      = "@variable",
    ["@lsp.type.interface"]                    = { fg = p.purple },

    ["@lsp.type.lifetime"]                     = "@keyword.storage",

    -- ---------------------------------------------------------------------------
    -- TYPES (BUILTIN / STDLIB)
    -- ---------------------------------------------------------------------------
    ["@lsp.type.selfKeyword"]                  = "@variable.builtin",
    ["@lsp.type.selfTypeKeyword"]              = "@variable.builtin",

    ["@lsp.type.builtinType"]                  = "@type.builtin",
    ["@lsp.typemod.class.defaultLibrary"]      = "@type.builtin",

    ["@lsp.typemod.struct.defaultLibrary"]     = "@type.builtin",

    ["@lsp.typemod.enum.defaultLibrary"]       = "@type.builtin",
    ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",

    ["@lsp.typemod.type.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = p.orange_dim },

    -- ---------------------------------------------------------------------------
    -- METAPROGRAMMING
    -- ---------------------------------------------------------------------------
    ["@lsp.type.macro"]                        = "@function.macro",
    ["@lsp.typemod.macro.defaultLibrary"]      = "@function.builtin",
    ["@lsp.typemod.macro.globalScope"]         = { fg = p.orange_light },

    ["@lsp.type.decorator"]                    = "@attribute",
    ["@lsp.type.deriveHelper"]                 = "@attribute",

    -- ---------------------------------------------------------------------------
    -- DIAGNOSTICS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = p.red },

    -- ---------------------------------------------------------------------------
    -- DOCUMENTATION
    -- ---------------------------------------------------------------------------
    ["@lsp.type.comment"]                      = "@comment",

    -- ---------------------------------------------------------------------------
    -- MODS
    -- ---------------------------------------------------------------------------
    ["@lsp.mod.declaration"]                   = { bold = true },
    ["@lsp.mod.deprecated"]                    = { sp = p.red, strikethrough = true },
  }
end

return M
