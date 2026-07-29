local M = {}

-- Core groups are always loaded
M.core = { "base", "kinds" }

-- Optional groups map plugin_support keys to group module names
M.optional = {
  treesitter      = "treesitter",
  lsp             = "semantic_tokens",
  neotree         = "neotree",
  telescope       = "telescope",
  gitsigns        = "gitsigns",
  cmp             = "cmp",
  blink           = "blink",
  which_key       = "which_key",
  indent_blankline= "indent_blankline",
  notify          = "notify",
  flash           = "flash",
  trouble         = "trouble",
  illuminate      = "illuminate",
  dashboard       = "dashboard",
  lazy            = "lazy",
}

function M.setup(p, opts)
  local result = {}

  for _, name in ipairs(M.core) do
    local mod = require("hardhat.groups." .. name)
    result = vim.tbl_deep_extend("force", result, mod.get(p, opts))
  end

  for plugin_name, enabled in pairs(opts.plugin_support) do
    if enabled then
      local group_name = M.optional[plugin_name]
      if group_name then
        local ok, mod = pcall(require, "hardhat.groups." .. group_name)
        if ok then
          result = vim.tbl_deep_extend("force", result, mod.get(p, opts))
        end
      end
    end
  end

  return result
end

return M
