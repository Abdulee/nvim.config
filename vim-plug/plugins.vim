" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " NerdTree
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    "Vim-Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " MARKDOWN PLUGINS
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " COC NVIM
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " LaTeX Plugin
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview'
    " LanguageTool
    Plug 'vigoux/LanguageTool.nvim'
    Plug 'rhysd/vim-grammarous'
call plug#end()
