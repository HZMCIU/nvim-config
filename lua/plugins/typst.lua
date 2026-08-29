return {
	"chomosuke/typst-preview.nvim",
	-- lazy = false, -- or ft = 'typst'
	ft = "typst",
	build = function()
		require("typst-preview").update()
	end,
	version = "1.*",
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`
}
