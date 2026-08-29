return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    require("plugins.lualine") -- 指向你的配置文件
  end,
}
