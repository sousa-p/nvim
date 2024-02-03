" Remaps """""""
map <C-S-Up> :m-2<CR>
map <C-S-Down> :m+<CR>

nmap <C-S-Right> :bnext<CR> " Go to next buffer file
nmap <C-S-Left> :bprev<CR> " Go to prev buffer file
nmap <C-k> :bd<CR> " Remove file of buffer

map <C-Right> <C-w>l " Go to Right Split
map <C-Left> <C-w>h " Go to Left Split
map <C-Up> <C-w>k " Go to Up Split
map <C-Down> <C-w>j " Go to Down Split

nmap <C-z> :u<CR> " Back file
nmap <C-y> :red<CR> " Return changes

if (has("nvim"))
    " Telescope """"""
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
endif
