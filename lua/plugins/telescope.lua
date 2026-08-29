local function mapcmd(key, cmd)
	vim.api.nvim_set_keymap("n", key, ":" .. cmd .. "<cr>", { noremap = true })
end
return {
	{
		"nvim-telescope/telescope.nvim",
		version = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- 可选：更强的 fuzzy / native 搜索（装了会更快）
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			-- 可选：打字完成后仍可快速预览/搜索时的扩展
			{ "nvim-telescope/telescope-ui-select.nvim" },
		},

		config = function()
			mapcmd("<leader>yo", "Telescope find_files")
			mapcmd("<leader>yb", "Telescope buffers")
			mapcmd("<leader>yc", "Telescope commands")
			mapcmd("<leader>yw", "Telescope live_grep")
			mapcmd("<leader>ys", "Telescope session-lens")

			require("telescope").setup({
				defaults = {
					find_command = {
						"fd",
						"--type",
						"f",
						"--hidden",
						"--follow",
						"--exclude",
						".git",
					},

					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--hidden",
						"--glob",
						"!.git",
					},
				},
				pickers = {
					find_files = {
						find_command = {
							"fd",
							"--type",
							"f",
							"--hidden",
							"--follow",
							"--exclude",
							".git",
							"--exclude",
							"node_modules",
							"--exclude",
							".cache",
						},
					},
				},
			})

			require("telescope").load_extension("fzf")
		end,
	},
	{
		"nvim-telescope/telescope-live-grep-args.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},
}
