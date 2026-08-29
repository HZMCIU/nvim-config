return {
	"neoclide/coc.nvim",
	branch = "release",
	-- coc 不需要 event 通常也行，但你可以按需延迟
	event = { "BufReadPre", "BufNewFile" },
}
