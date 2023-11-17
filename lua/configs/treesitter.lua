local M = {}
function M.config()
    -- nvim-treesitter config
    require'nvim-treesitter.configs'.setup {
        -- ensure_installed = "maintained", -- for installing all maintained parsers
        ensure_installed = { "cpp", "java" ,"lua" , "python", "markdown", "markdown_inline", "json", "latex" }, -- for installing specific parsers
        sync_install = true, -- install synchronously
        ignore_install = { }, -- parsers to not install
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false, -- disable standard vim highlighting
        },
    }
    
    vim.opt.foldmethod='expr'
    vim.opt.foldexpr='nvim_treesitter#foldexpr()'
end
return M
