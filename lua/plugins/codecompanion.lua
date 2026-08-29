return {
	"olimorris/codecompanion.nvim",
	version = "^19.0.0",
	opts = {
		interactions = {
			chat = {
				adapter = {
					name = "opencode",
					model = "CUN.AI/deepseek-v4-pro",
				},
			},
			cli = {
				agent = "opencode",
				agents = {
					opencode = {
						cmd = "opencode",
						args = {},
						description = "opencode",
						provider = "terminal",
					},
				},
			},
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
}
