return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",

  keys = {
    {
      "<leader>-",
      function()
        -- 不同版本 API 可能不同：先按最常见的写法
        require("yazi").yazi()
      end,
      desc = "Yazi: open",
      mode = "n",
    },
  },

  config = function()
    local ok, yazi = pcall(require, "yazi")
    if ok and type(yazi.setup) == "function" then
      yazi.setup({})
    end
  end,
}
