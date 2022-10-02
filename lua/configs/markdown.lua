local M = {}

function M.config()
  vim.cmd('let g:UltiSnipsJumpForwardTrigger = \'<tab>\'')
  vim.cmd('let g:UltiSnipsExpandTrigger = \'<tab>\'')
  vim.cmd('let g:UltiSnipsJumpBackwardTrigger = \'<s-tab>\'')
end

return M
