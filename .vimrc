" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'
"   Plug 'miikanissi/modus-themes.nvim'
  Plug 'sainnhe/sonokai'

call plug#end()

" }}}

" colorscheme modus " modus_operandi, modus_vivendi
        " Important!!
        if has('termguicolors')
          set termguicolors
        endif

        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'andromeda'
        let g:sonokai_better_performance = 1

        colorscheme sonokai

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
set belloff=all

" FORMATTING" --------------------------------------------------------------- {{{
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set number relativenumber
set cursorline

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode


" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
" set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set statusline+=\ row:\ %l\ col:\ %c\ file:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" SEARCH ------------------------------------------------------------ {{{
" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch


" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}} 
