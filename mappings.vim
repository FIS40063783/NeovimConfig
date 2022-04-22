" Set leader key, important for other bindings
let g:mapleader="\<Space>"

" No crutches, learn to use Vim properly!
nnoremap <Up> <cmd>echoe "Use k instead!"<CR>
nnoremap <Down> <cmd>echoe "Use j instead!"<CR>
nnoremap <Left> <cmd>echoe "Use h instead!"<CR>
nnoremap <Right> <cmd>echoe "Use l instead!"<CR>
" And now for INSERT mode
inoremap <Up> <cmd>echoe "Use k instead!"<CR>
inoremap <Down> <cmd>echoe "Use j instead!"<CR>
inoremap <Left> <cmd>echoe "Use h instead!"<CR>
inoremap <Right> <cmd>echoe "Use l instead!"<CR>
inoremap <BS> <cmd>echoe "Use the delete commands in INSERT mode instead!"<CR>
" For VISUAL mode
vnoremap <Up> <cmd>echoe "Use k instead!"<CR>
vnoremap <Down> <cmd>echoe "Use j instead!"<CR>
vnoremap <Left> <cmd>echoe "Use h instead!"<CR>
vnoremap <Right> <cmd>echoe "Use l instead!"<CR>

" Improved navigation for splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use <M-hjkl> to resize splits
nnoremap <M-h> <cmd>vertical resize -2<CR>
nnoremap <M-j> <cmd>resize -2<CR>
nnoremap <M-k> <cmd>resize +2<CR>
nnoremap <M-l> <cmd>vertical resize +2<CR>

" An easier keybinding with save
nnoremap <leader>w :w!<CR>

" Fugitive (Git) mappings
nnoremap <leader>g <cmd>G<CR>
nnoremap <leader>gp <cmd>Git! push<CR>
nnoremap <leader>gpu <cmd>G pull<CR>
nnoremap <leader>gc <cmd>G commit<CR>
nnoremap <leader>ga <cmd>G add<CR>
nnoremap <leader>gd <cmd>Gdiffsplit<CR>

" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>

nnoremap <F5> <cmd>make<CR>
