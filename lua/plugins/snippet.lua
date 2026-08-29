return {
	{
		"SirVer/ultisnips",
		config = function()
			vim.g.UltiSnipsExpandTrigger = "<tab>" -- 展开触发
			vim.g.UltiSnipsJumpForwardTrigger = "<tab>" -- 跳到下一个占位符
			vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>" -- 跳回
		end,
	},
	{
		"honza/vim-snippets",
	},
}
