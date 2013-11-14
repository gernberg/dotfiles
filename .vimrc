" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set grepprg=grep\ -nH\ $*

let g:tex_flavor = "latex" 
let mapleader=","

colorscheme delek
syn on
au BufNewFile,BufRead *.ctp setfiletype php
set number

set wrapscan
set number
set backspace=start,indent,eol

set t_Co=256
colorscheme wombat256mod
autocmd FileType php set omnifunc=phpcomplete#CompletePHP 

set tags=tags;~/.vim/mytags/framework

set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
" set cinkeys=0{,0},:,0#,!,!^F
set mouse=a
map <F12> :NERDTree <CR>
nnoremap <F2> :set nopaste!<CR>

call pathogen#infect()

set nocompatible          " Because filetype detection doesn't work well in compatible mode
filetype plugin indent on " Turns on filetype detection, filetype plugins, and filetype indenting all of which add nice extra features to whatever language you're using
let g:LatexBox_latexmk_options = "-pvc -pdfps"
let g:Powerline_symbols = 'fancy'
" set guifont=Monofur\ for\ Powerline\ 12
" set guifont=Droid\ Sans\ Bold\ for\ Powerline\ 10
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
set laststatus=2
set bdir-=.
set bdir+=/tmp
set dir-=.
set dir+=/tmp

filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
