local M = {}

function M.config()
  vim.cmd('let g:vimtex_view_method = "zathura"')
  vim.cmd('let g:tex_flavor="latex"')
  vim.cmd('let g:vimtex_quickfix_mode=0')
  vim.cmd('set conceallevel=1')
  vim.cmd('let g:tex_conceal="abdmg"')
  vim.cmd('set tw=100')
  vim.cmd('set fo+=m')
end

return M
