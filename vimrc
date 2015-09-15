set nocp
execute pathogen#infect()
syntax on
filetype plugin indent on
set undofile
set undodir=$HOME/.vim/vimundo
set diffopt+=vertical,iwhite
"set background=light
set background=dark
let g:solarized_termcolors=256
"let g:solarized_termcolors=1
"let g:solarized_contrast = high 
colorscheme solarized
set tags=./.git/tags,./tags,tags;$HOME
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
let g:alternateExtensions_cc='hh'
let g:alternateExtensions_hh='cc'
nnoremap <silent> <Leader>] :A<CR>
"let g:clang_use_library      = 1
"   let g:clang_auto_select      = 0
"   let g:clang_complete_auto    = 1
"   let g:clang_complete_copen   = 1
"   let g:clang_complete_macros  = 1
"   let g:clang_complete_patters = 1
"   set completeopt=menu,longest
"let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
"if isdirectory(s:clang_library_path)
"  let g:clang_library_path=s:clang_library_path
"endif
"let g:clang_user_options='|| exit 0'
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
let g:Tex_DefaultTargetFormat='pdf'
function CompileXeTex()
    let oldCompileRule=g:Tex_CompileRule_pdf
    let g:Tex_CompileRule_pdf = 'xelatex $*'
    call Tex_RunLaTeX()
    let g:Tex_CompileRule_pdf=oldCompileRule
endfunction
map <Leader>lx :<C-U>call CompileXeTex()<CR>
let g:Tex_TreatMacViewerAsUNIX = 1
let g:Tex_ExecuteUNIXViewerInForeground = 1
let g:Tex_ViewRule_ps = 'open -a Skim'
let g:Tex_ViewRule_pdf = 'open -a /Applications/Skim.app'
let g:Tex_ViewRule_xpdf = 'open -a /Applications/Skim.app'
