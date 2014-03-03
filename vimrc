set nocp
execute pathogen#infect()
syntax on
filetype plugin indent on
set undofile
set undodir=$HOME/.vim/vimundo
"set background=light
set background=dark
let g:solarized_termcolors=256
"let g:solarized_termcolors=1
"let g:solarized_contrast = high 
colorscheme solarized
set tags=./.git/tags,./tags,tags;$HOME
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
