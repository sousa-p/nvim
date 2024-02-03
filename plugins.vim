" Plugins """""""

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'vim-airline/vim-airline' " Airlene Status bar
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'honza/vim-snippets' " Snippets
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' " Git
Plug 'tpope/vim-fugitive' " Git
Plug 'airblade/vim-gitgutter' " Git
Plug 'jiangmiao/auto-pairs' " Auto pair

if (has("nvim"))
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif


" Languages """""""
Plug 'sheerun/vim-polyglot'  " Polyglot
Plug 'leafgarland/typescript-vim' " Typescript
Plug 'Quramy/tsuquyomi' "Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'
Plug 'phpactor/phpactor' " PHP
Plug 'StanAngeloff/php.vim' " PHP
Plug 'othree/html5.vim' " HTML
Plug 'pangloss/vim-javascript' " JS
Plug 'cakebaker/scss-syntax.vim' " CSS
Plug 'dart-lang/dart-vim-plugin' " Dart
Plug 'akinsho/flutter-tools.nvim' " Flutter
Plug 'dense-analysis/ale' " Ale'

call plug#end()



" Airline """""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#tab_nr_type = 1



" NerdTree """""""
nmap <C-a> :NERDTreeToggle<CR>



"Ale """""""
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'php': ['php'],
\   'html': ['htmlhint'],
\   'css': ['stylelint'],
\   'typescript': ['tsc'],
\   'csharp': ['omnisharp'],
\   'dart': ['dartanalyzer'],
\   'flutter': ['dartanalyzer'],
\}


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'php': ['phpcbf'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'typescript': ['prettier'],
\   'csharp': ['omnisharp'],
\   'dart': ['dartfix'],
\   'flutter': ['dartfix'],
\}

let g:ale_fix_on_save = 1
let g:ale_enabled = 1


" Fugitive """""""

autocmd FileType git nmap <buffer> <Leader>gs :Git<CR>
autocmd FileType git nmap <buffer> <Leader>gc :Git commit<CR>
nnoremap <leader>gb :Gblame<CR>

" GitGutter """""""

let g:gitgutter_enabled = 1
