execute pathogen#infect()

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

:set nowrap
:set nu
:set list
:set ruler
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set autoindent
:set smartindent

:map <C-j> 10<C-e>10j
:map <C-k> 10<C-y>10k
:map <C-M-j> 20<C-e>20j
:map <C-M-k> 20<C-y>20k
"au BufWritePre * :set binary | set noeol
"au BufWritePost * :set nobinary | set eol

set fileformat=unix " endline setted to \n
set mouse=a

" Key maps
" ========

nnoremap <C-Left>     :bprevious<CR>
nnoremap <C-Right>    :bnext<CR>
nnoremap <C-t>        :enew<CR>
inoremap <C-Left>     <Esc>:bprevious<CR>i
inoremap <C-Right>    <Esc>:bnext<CR>i
inoremap <C-t>        <Esc>:enew<CR>

" Move to matching [],{}, or () and highlight included lines.
noremap % v%

nnoremap <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
inoremap <F2> <Esc>:mksession! ~/.vim_session <cr> " Quick write session with F2
nnoremap <F3> :source ~/.vim_session <cr>     " And load session with F3
inoremap <F3> <Esc>:source ~/.vim_session <cr>     " And load session with F3




" Airline settings
" Enable the list of buffers


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = 1


