vim.g.mapleader = " "

local function mapkey(mode, lhs, rhs)
	vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true })
end

local function mapcmd(key, cmd)
	vim.api.nvim_set_keymap("n", key, ":" .. cmd .. "<cr>", { noremap = true })
end

local function maplua(key, txt)
	vim.api.nvim_set_keymap("n", key, ":lua " .. txt .. "<cr>", { noremap = true })
end

mapkey("i", "jk", "<esc>")
-- f: file tree
mapcmd("<leader>ft", "NvimTreeToggle")
mapcmd("<leader>ff", "NvimTreeFocus")
mapcmd("<leader>fr", "RnvimrToggle")
-- y: telescope
mapcmd("<leader>yo", "Telescope find_files")
mapcmd("<leader>yg", "Telescope live_grep")
mapcmd("<leader>yb", "Telescope buffers")
-- c: quick command
mapcmd("<f10>", "q")

mapcmd("<leader>bn", "bn")
mapcmd("<leader>bp", "bp")
mapcmd("<leader>bd", "bdelete")
