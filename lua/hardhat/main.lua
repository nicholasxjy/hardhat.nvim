local M = {}

M.transparent_groups = {
	["Normal"] = true,
	["NormalNC"] = true,
	["NormalSB"] = true,
	["SignColumn"] = true,
	["SignColumnSB"] = true,
	["FoldColumn"] = true,
	["EndOfBuffer"] = true,
	["StatusLine"] = true,
	["StatusLineNC"] = true,
	["VertSplit"] = true,
	["WinSeparator"] = true,
}

local function paint(syntax, opts)
	local styles = opts.styles or {}

	-- group-specific overrides
	local group_overrides = {
		["@comment"] = function(hl)
			hl.italic = styles.italic_comments == true
		end,
	}

	for group, hl in pairs(syntax) do
		if not hl.link then
			-- global bold/italics
			hl.bold = styles.bold ~= false and hl.bold
			hl.italic = styles.italics ~= false and hl.italic
		end

		-- apply transparency if set
		if opts.transparent and M.transparent_groups[group] then
			hl.bg = "NONE"
		end

		if group_overrides[group] then
			group_overrides[group](hl)
		end

		-- apply the highlight
		vim.api.nvim_set_hl(0, group, hl)
	end
end

function M.load(opts, palette)
	-- reset highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- load palette
	local palette_path = "hardhat.palettes." .. palette
	local p = require(palette_path).load_colors()

	-- load all highlight groups
	local syntax = require("hardhat.groups").setup(p, opts)

	-- add user highlight overrides
	syntax = vim.tbl_deep_extend("force", syntax, opts.hl_overrides)

	paint(syntax, opts)
end

return M
