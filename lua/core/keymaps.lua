vim.g.mapleader = ' '

local function mapkey(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap=true})
end

local function mapcmd(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true})
end

local function maplua(key, txt)
    vim.api.nvim_set_keymap('n', key, ':lua '..txt..'<cr>', {noremap=true})
end

-- editor mode
--mapkey('i', '<C-w>', '<C-x><C-k>')
mapkey('i', 'jk',    '<esc>')
mapkey('i', '<c-h>', '<left>')
mapkey('i', '<c-j>', '<down>')
mapkey('i', '<c-k>', '<up>')
mapkey('i', '<c-l>', '<right>')
-- keymaps
-- f: file tree
mapcmd('<leader>ft', 'NvimTreeToggle')
mapcmd('<leader>ff', 'NvimTreeFocus')
mapcmd('<leader>fr', 'RnvimrToggle')
-- y: telescope
mapcmd('<leader>yo', "Telescope find_files")
mapcmd('<leader>yg', "Telescope live_grep")
mapcmd('<leader>yb', "Telescope buffers")
-- c: quick command
mapkey('n', '<leader>ce', ':e<space>')
mapcmd('<leader>cw', 'w')
mapcmd('<leader>cW', 'wa')
mapcmd('<leader>cE', 'e!')
mapcmd('<leader>cq', 'q')
mapcmd('<leader>cQ', 'q!')
mapcmd('<leader>cx', 'x')
mapcmd('<f10>', 'q')
-- w: window
mapkey('n', '<leader>wh', '<c-w>h')
mapkey('n', '<leader>wj', '<c-w>j')
mapkey('n', '<leader>wk', '<c-w>k')
mapkey('n', '<leader>wl', '<c-w>l')
mapkey('n', '<leader>w1', '<c-w>o')
mapcmd('<leader>wx', 'x')
mapcmd('<leader>w2', 'sp')
mapcmd('<leader>w3', 'vs')
-- windowright resize
mapkey('n', '<m-9>', '<c-w><')
mapkey('n', '<m-0>', '<c-w>>')
mapkey('n', '<m-->', '<c-w>-')
mapkey('n', '<m-=>', '<c-w>+')
mapkey('n', '<m-r>', 'resize<space>')
mapkey('n', '<m-t>', 'vertical resize<space>')
-- b: buffer
mapcmd('<leader>bn', 'bn')
mapcmd('<leader>bp', 'bp')
mapcmd('<leader>bd', 'Bdelete')
-- p: plugins
mapcmd('<leader>pi', 'PackerInstall')
mapcmd('<leader>pc', 'PackerClean')
-- s: search
mapkey('n', '<leader>ss', '/')
mapkey('n', '<leader>sw', '/\\<lt>\\><left><left>')
-- l/g/w: language
-- l: general
-- g: goto
-- w: workspace
maplua('<leader>le', 'vim.diagnostic.open_float()')
maplua('<leader>lq', 'vim.diagnostic.setloclist()')
maplua('<leader>lk', 'vim.lsp.buf.hover()')
maplua('<leader>lr', 'vim.lsp.buf.rename()')
maplua('<leader>lh', 'vim.lsp.buf.signature_help()')
maplua('<leader>la', 'vim.lsp.buf.code_action()')
maplua('<leader>lf', 'vim.lsp.buf.formatting()')
mapcmd('<leader>lb', 'SymbolsOutline')

maplua('<leader>gD', 'vim.lsp.buf.declaration()')
mapkey('n','<leader>gd', '<Plug>(coc-definition)')
mapkey('n','<leader>gt', '<Plug>(coc-type-definition)')
mapkey('n','<leader>gi', '<Plug>(coc-implementation)')
mapkey('n','<leader>gp', '<Plug>(coc-diagnostic-prev)')
mapkey('n','<leader>gn', '<Plug>(coc-diagnostic-next)')
mapkey('n', '<leader>gr', '<Plug>(coc-references)')

maplua('<leader>wa', 'vim.lsp.buf.add_workspace_folder()')
maplua('<leader>wr', 'vim.lsp.buf.remove_workspace_folder()')
maplua('<leader>wl', 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))')
-- t: terminal
mapcmd('<leader>tt', 'FloatermToggle')
mapcmd('<leader>tn', 'FloatermNew')
-- c: code 
mapcmd('<leader>cf', 'Neoformat')
mapcmd('<leader>cb', 'terminal clang++-12 % -o %< -g')
mapcmd('<leader>cr', 'terminal ./%< < in')

-- build
mapcmd('<f4>', 'term make; ./%<')

-- git
mapcmd('<leader>ga', 'term git add .')
