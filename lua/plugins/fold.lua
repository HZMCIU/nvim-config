return {
	{
		"kevinhwang91/nvim-ufo",
		-- event = "BufReadPre",
		dependencies = {
			-- 可选：ufo 用到的缩进/折叠依赖库
			"kevinhwang91/promise-async",
		},
		config = function()
			local ufo = require("ufo")

			ufo.setup({
				-- 折叠方式：provider 会自动用更合适的方式
				provider_selector = function(bufnr, filetype, buftype)
					-- 例：根据类型选择 provider；你也可以删掉这段用默认逻辑
					return { "treesitter", "indent" }
				end,

				-- 自动打开/关闭有些场景会更符合预期（可按需调）
				fold_virt_text_handler = nil, -- 使用默认 handler
				-- 下面这些是常见开关，你不想改可以都删掉
				preview = {
					-- 预览折叠内容时，是否显示在浮窗
					--（默认通常就够用）
					win_config = {
						border = "none",
						-- 你也可以加透明度之类（终端/GUI支持不同）
					},
				},
			})

			-- 可选：提供常用快捷键
			local map = vim.keymap.set
			map("n", "zR", ufo.openAllFolds, { desc = "UFO: open all folds" })
			map("n", "zM", ufo.closeAllFolds, { desc = "UFO: close all folds" })
			map("n", "zr", ufo.openFoldsExceptKinds, { desc = "UFO: open folds except kinds" })
			map("n", "zm", ufo.closeFoldsWith, { desc = "UFO: close folds with kinds" })
		end,
	},
}
