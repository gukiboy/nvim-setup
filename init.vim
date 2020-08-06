" Specify a directory for plugins.

call plug#begin(stdpath('data') . '/plugged')

" Specify your required plugins here.
Plug 'liuchengxu/vim-better-default'
Plug 'easymotion/vim-easymotion'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }
Plug 'w0rp/ale'
Plug 'liuchengxu/vim-clap'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Olical/conjure', { 'tag': 'v3.5.0' }
Plug 'morhetz/gruvbox'
" Initialize plugin system.
call plug#end()

let g:coc_global_extensions = ['coc-conjure']

let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}
let g:clap_provider_grep_delay = 50
let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden -g "!.git/"'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <leader>* :Clap grep ++query=<cword><cr>
nnoremap <leader>fg :Clap grep<cr>
nnoremap <leader>ff :Clap files --hidden<cr>
nnoremap <leader>fb :Clap buffers<cr>
nnoremap <leader>fw :Clap windows<cr>
nnoremap <leader>fr :Clap history<cr>
nnoremap <leader>fh :Clap command_history<cr>
nnoremap <leader>fj :Clap jumps<cr>
nnoremap <leader>fl :Clap blines<cr>
nnoremap <leader>fL :Clap lines<cr>
nnoremap <leader>ft :Clap filetypes<cr>
nnoremap <leader>fm :Clap marks<cr>


" For global replace
vnoremap <C-r> gD:%s/<C-R>///gc<left><left><left>


" Colors
highlight NormalFloat ctermbg=black guibg=blue
let g:clap_theme = 'material_design_dark'

autocmd vimenter * colorscheme gruvbox

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

set cc=90
let maplocalleader = "\\"
