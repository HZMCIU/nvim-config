lua require('core.init')

set guifont=SFMono\ NERD\ Font:h16
set clipboard^=unnamed,unnamedplus
autocmd FileType c setlocal foldmethod=syntax

if has('unix')
    set dictionary+=/usr/share/dict/words
else
    set dictionary+=~/AppData/Local/nvim/words
endif
