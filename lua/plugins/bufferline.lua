return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- or "tabs"
        themable = true,
        show_buffer_icons = false,

        -- 是否在末尾截断缓冲区
        -- (不同版本字段可能略有差异；如果报错把 options 里这行去掉)
        -- maximum_length = 30,

        -- 样式相关：用你已有 colorscheme 时通常更好看
        separator_style = "slant", -- "thick" / "thin" / "slant" (常见几种)
        enforce_regular_tabs = false,
      }
    })
  end,

 keys = {
    {
      "<leader>cf",
      function()
        local conform = require("conform")
        -- 格式化当前缓冲区并写入（保存）
        conform.format({ async = false, lsp_fallback = true })
        vim.cmd("write")
      end,
      desc = "Format code (conform) and write",
      mode = { "n", "v" },
    },
  },
}
