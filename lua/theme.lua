vim.cmd("colorscheme catppuccin-frappe")

local groups = {
	"Normal",
	"NormalNC",
	"EndOfBuffer",
	"NonText",
	"NormalFloat",
	"FloatBorder",
	"Pmenu",
	"PmenuSel",
}

for _, g in ipairs(groups) do
	vim.api.nvim_set_hl(0, g, { bg = "none", ctermbg = "none" })
end

vim.api.nvim_set_hl(0, "LineNr", {
	fg = "#9ca3af",
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
	fg = "#22c55e",
	bold = true,
})
