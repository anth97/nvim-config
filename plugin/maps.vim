" Base maps
nnoremap <space><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>w :w<CR>
nnoremap <silent><leader>we :w<CR> :edit<CR>
nnoremap Y y$

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-1<CR>==

" Keeping cursor centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ; ;<C-g>u
inoremap [ [<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Navigation
nnoremap <leader>v <cmd>vsplit<CR>
nnoremap <leader>s <cmd>split<CR>
nnoremap <C-l> <cmd>bn<CR>
nnoremap <C-h> <cmd>bp<CR>
nnoremap <S-q> <cmd>bd<CR>
nnoremap <leader>0 0gt
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" Clipboard
vnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Telescope
nnoremap <C-p> <cmd>Telescope git_files<CR>
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-s> <cmd>Telescope git_status<CR>
nnoremap <leader>lg <cmd>Telescope live_grep<CR>
nnoremap <leader>b <cmd>Telescope buffers<CR>
nnoremap <leader>ht <cmd>Telescope help_tags<CR>

" Commenter
vmap ++ :CommentToggle<CR>
nmap ++ :CommentToggle<CR>

" LSP
nmap <silent>gd :lua vim.lsp.buf.definition()<CR>
nmap <silent>gi :lua vim.lsp.buf.implementation()<CR>
nmap <silent>gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>sh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>sd :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>gn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>
nnoremap F :lua vim.lsp.buf.formatting()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>

" Prettier
nnoremap <silent><leader>f :Prettier<CR>

" NvimTree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" SymbolsOutLine
nnoremap <C-k> :SymbolsOutline<CR>

" inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
