local M = {}

function M.config()
  vim.cmd('let g:UltiSnipsJumpForwardTrigger = \'<tab>\'')
  vim.cmd('let g:UltiSnipsExpandTrigger = \'<tab>\'')
  vim.cmd('let g:UltiSnipsJumpBackwardTrigger = \'<s-tab>\'')
  vim.cmd('let g:mkdp_path_to_chrome = "/usr/bin/chromium"')
  vim.cmd('let g:mkdp_markdown_css=""')
end

return M
