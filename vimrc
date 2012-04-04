" References: Looked at these for inspiration
"   https://github.com/mando/dotfiles/blob/master/.vimrc
"   https://github.com/r00k/dotfiles/blob/master/vimrc

" Just say no to plain vi
" This must be first, because it changes other options as a side effect.
set nocompatible 

" ========================================================================
"   Vundle Config:
" ========================================================================
" TODO: Find out why this is required
filetype off " required!

"placed vundle in non-standard dir so bundle/ can be gitignored
set rtp+=~/.vim/vundle/ 
call vundle#rc()

" Let Vundle manage Vundle (required)! 
Bundle 'gmarik/vundle'

""" Functional customizations
" Fuzzy file finder
Bundle 'ctrlp.vim'
" Quick (un)commenting
Bundle 'tomtom/tcomment_vim'
" Visual indentation level guides
Bundle 'nathanaelkane/vim-indent-guides'

" Colors
Bundle 'scottymoon/vim-twilight'

" Programming Languages
Bundle 'kchmck/vim-coffee-script'

" TODO: Explore these
" Bundle 'tpope/vim-surround' "mappings to surrond code w/ brackets, quotes, etc.
" Bundle 'tpope/vim-fugitive' "git commands??
" Language bundles
" Bundle 'tpope/vim-rails'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'kchmck/vim-coffee-script'

" This or http://bytefluent.com/vivify/ railscast, vividchalk, or other theme??
" Bundle 'jpo/vim-railscasts-theme'

" TODO: Find out why this is required
"   ... repeated below for completeness
filetype plugin indent on " required!

" ========================================================================
"   General:
" ========================================================================
" TODO: Switch syntax highlighting to enable so we can override w/ :highlights??
syntax on "enable

" For MacVim and GTK+ 2 it is highly recommended to set 'encoding' to 'utf-8'
set encoding=utf-8

" load file type plugins and indentation
filetype plugin indent on 

""" Whitespace
set tabstop=2 shiftwidth=2
set expandtab
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

""" what files to ignore when doing filename completion, etc.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=vendor/gems/*,vendor/cache/*,.bundle/*,.sass-cache/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" ========================================================================
"   Advanced:
" ========================================================================
""" Key bindings
let mapleader=','

" TODO: Find out what <leader>s does??
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

""" Bundle: Tcomment
" TODO: Should I simply change first line to :TCommentBlock ??
noremap <leader>c :TComment<cr>
" vnoremap <leader>cb :TCommentBlock<cr> " Hmm, above fires before can enter 'b'

" ========================================================================
"   Visual:
" ========================================================================
""" Margin line numbers
set number
set numberwidth=4

" Set Theme
colorscheme twilight

" ========================================================================
"   Vim Operational Settings:
" ========================================================================
" Don't create swapfiles?... Holds all files in memory only
" Note: May cause issues w/ really large files
set noswapfile
" You can set multiple backupdirs. Vim will use the first one that's an actual directory
set backupdir=~/.tmp,/var/tmp

" ========================================================================
"   System Specific Settings: Should be avoided whenever possible
" ========================================================================
" Use .vimrc.local for settings specific to one system
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
