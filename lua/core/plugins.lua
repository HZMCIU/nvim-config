-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    -- use 'nathom/filetype.nvim'

    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes (disabled other themes to optimize startup time)
    use 'sainnhe/sonokai'
    use 'folke/tokyonight.nvim'
    use { 'altercation/vim-colors-solarized' }
    use { 'morhetz/gruvbox' }
    use { 'flazz/vim-colorschemes'  }
    use { 'rafi/awesome-vim-colorschemes'  }
    use { 'rebelot/kanagawa.nvim' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "EdenEast/nightfox.nvim" }
    use { 'navarasu/onedark.nvim' }
--  use 'joshdick/onedark.vim'
--  use { 'catppuccin/nvim', as='catppuccin' }
--  use { 'sonph/onehalf', rtp='vim/' }
--  use 'liuchengxu/space-vim-dark'
--  use 'ahmedabdulrahman/aylin.vim'

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'kevinhwang91/rnvimr'

    -- language
    use {'neoclide/coc.nvim', branch = 'release'}
    -- use 'neovim/nvim-lspconfig'
    -- use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'onsails/lspkind-nvim'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    use { 'rust-lang/rust.vim' }
    use { 'fatih/vim-go' }

    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- tagbar
    use 'simrat39/symbols-outline.nvim'

    -- floating terminal
    use 'voldikss/vim-floaterm'

    -- file telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- startup screen
--    use '~/Developer/aleph-nvim'
    use 'p-z-l/aleph-nvim'

    -- editor
    -- use {
	  --     'windwp/nvim-autopairs',
    --     config = function() require('nvim-autopairs').setup {
    --       disable_filetype = {'vim'}
    --     } end
    -- }
    use { 'jiangmiao/auto-pairs' }
    use 'sbdchd/neoformat'
    use 'mhartington/formatter.nvim'

    -- markdown 
    use 'godlygeek/tabular'
    use 'preservim/vim-markdown'
    use { 'lervag/vimtex' }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use {'lukas-reineke/indent-blankline.nvim'}
end)


