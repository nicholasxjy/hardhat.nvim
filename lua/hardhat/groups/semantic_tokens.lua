local M = {}

function M.get(p, _opts)
  return {
    -- ---------------------------------------------------------------------------
    -- LITERALS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.boolean"]                      = { fg = p.red },
    ["@lsp.type.number"]                       = { fg = p.red_light },

    ["@lsp.type.string"]                       = { fg = p.white_light },
    ["@lsp.typemod.string.injected"]           = { italic = true },

    ["@lsp.type.regexp"]                       = { fg = p.green_light },
    ["@lsp.type.escapeSequence"]               = { fg = p.green_light },
    ["@lsp.type.formatSpecifier"]              = { fg = p.green_light },

    -- ---------------------------------------------------------------------------
    -- IDENTIFIERS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.variable"]                     = { link = "@variable" },
    ["@lsp.type.property"]                     = { link = "@property" },
    ["@lsp.type.parameter"]                    = { link = "@variable.parameter" },

    ["@lsp.typemod.variable.callable"]         = { link = "@function.call" },
    ["@lsp.typemod.variable.static"]           = { link = "@variable.member" },
    ["@lsp.typemod.variable.defaultLibrary"]   = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"]         = { italic = true },

    -- ---------------------------------------------------------------------------
    -- KEYWORDS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.keyword"]                      = { link = "@keyword" },
    ["@lsp.typemod.keyword.async"]             = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"]          = { italic = true },

    ["@lsp.type.modifier"]                     = { link = "@keyword.modifier" },

    ["@lsp.type.operator"]                     = { link = "@operator" },
    ["@lsp.typemod.operator.injected"]         = { italic = true },

    -- ---------------------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.function"]                     = { link = "@function" },
    ["@lsp.type.method"]                       = { link = "@function.method" },

    ["@lsp.typemod.function.defaultLibrary"]   = { fg = p.cyan },
    ["@lsp.typemod.method.defaultLibrary"]     = { fg = p.cyan },

    -- ---------------------------------------------------------------------------
    -- TYPES
    -- ---------------------------------------------------------------------------
    ["@lsp.type.struct"]                       = { link = "@type" },
    ["@lsp.type.class"]                        = { link = "@type" },
    ["@lsp.type.namespace"]                    = { link = "@module" },
    ["@lsp.type.event"]                        = { link = "@property" },

    ["@lsp.type.enum"]                         = { fg = p.orange_dim },
    ["@lsp.type.enumMember"]                   = { fg = p.orange },

    ["@lsp.type.type"]                         = { link = "@type" },
    ["@lsp.type.typeAlias"]                    = { fg = p.yellow_dim },
    ["@lsp.type.typeParameter"]                = { fg = p.purple_light },
    ["@lsp.type.generic"]                      = { fg = p.purple_dim },
    ["@lsp.type.interface"]                    = { fg = p.purple },

    ["@lsp.type.lifetime"]                     = { fg = p.blue_dim, italic = true },

    -- ---------------------------------------------------------------------------
    -- TYPES (BUILTIN / STDLIB)
    -- ---------------------------------------------------------------------------
    ["@lsp.type.selfKeyword"]                  = { fg = p.cyan_dim, italic = true },
    ["@lsp.type.selfTypeKeyword"]              = { fg = p.cyan_dim, italic = true },

    ["@lsp.type.builtinType"]                  = { fg = p.orange_dim },
    ["@lsp.typemod.class.defaultLibrary"]      = { fg = p.cyan },

    ["@lsp.typemod.struct.defaultLibrary"]     = { fg = p.orange_dim },

    ["@lsp.typemod.enum.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = p.orange },

    ["@lsp.typemod.type.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = p.orange_dim },

    -- ---------------------------------------------------------------------------
    -- METAPROGRAMMING
    -- ---------------------------------------------------------------------------
    ["@lsp.type.macro"]                        = { link = "@function.macro" },
    ["@lsp.typemod.macro.defaultLibrary"]      = { fg = p.cyan_light },

    ["@lsp.type.decorator"]                    = { fg = p.blue_light, italic = true },
    ["@lsp.type.deriveHelper"]                 = { fg = p.blue_light, italic = true },

    -- ---------------------------------------------------------------------------
    -- DIAGNOSTICS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.unresolvedReference"]          = { fg = p.red, bold = true },

    -- ---------------------------------------------------------------------------
    -- DOCUMENTATION
    -- ---------------------------------------------------------------------------
    ["@lsp.type.comment"]                      = { link = "@comment" },

    -- ---------------------------------------------------------------------------
    -- MODS
    -- ---------------------------------------------------------------------------
    ["@lsp.mod.declaration"]                   = { bold = true },
    ["@lsp.mod.deprecated"]                    = { sp = p.red, strikethrough = true },
    ["@lsp.typemod.macro.globalScope"]         = { fg = p.orange_light },
  }
end

return M
