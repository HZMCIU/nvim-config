return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- 保存前格式化（按需可改）
	config = function()
		local conform = require("conform")

		conform.setup({
			-- 触发格式化的方式：保存前自动格式化
			format_on_save = {
				-- 也可以改成 "always" / 设为 false
				lsp_fallback = true,
				timeout_ms = 2000,
			},

			-- 格式化器映射：按文件类型选择
			formatters_by_ft = {
				lua = { "stylua" }, -- 或用 "stylua"
				python = { "ruff_format", "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				go = { "gofmt" },
				cpp = { "clang-format" },
			},
		})
	end,
}
