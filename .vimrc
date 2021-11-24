call plug#begin()

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

Plug 'styled-components/vim-styled-components'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'morhetz/gruvbox'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()              " required



"Crtlp respeitar o gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']



" CoC extensions - Need manual config to save to format
let g:coc_global_extensions = ['coc-tsserver','coc-prettier']



"GO to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



"Gruvbox Theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"Relative Line Count
" turn relative line numbers on
:set relativenumber
:set rnu




"Airline theme config
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '

set noshowmode
