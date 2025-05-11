set number
set relativenumber
set tabstop=3
set backspace=indent,eol,start
set encoding=UTF-8
set termguicolors
syntax on
filetype plugin indent on 
set ts=2 sts=2 sw=2 et ai si
nnoremap <S-F1> :w<CR>:!g++ % -o %< && ./%<<CR>


" Vim-Plug

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips' 
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ollykel/v-vim'
Plug 'cheap-glitch/vim-v'
Plug 'rust-lang/rust.vim'
Plug 'PhilRunninger/nerdtree-visual-selection'

Plug 'ycm-core/YouCompleteMe'
call plug#end()


"Plugin extensions


"Vim Airlines
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tokyonight'
syntax enable

"""""ALE"""""""
let g:ale_completion_enabled = 1

let g:ale_linters = {
			\'python': ['flake8'],
			\'rust': ['rust-analyzer','cargo'],
			\'v': ['v'],
			\'lua': ['lua-language-server'],
			\'cpp': ['clang'],
\}
let g:ale_rust_rustfmt_options = '--edition 2018'
let g:ale_rust_cargo_executable = 'cargo'

""""""Autocomplpop""""""

set completeopt=menuone,popup,longest
set complete+=kspell
set shortmess+=c



"""""startify""""""

let g:startify_custom_header = [
 \ '    ██████╗██╗ ███████████╗ ██╗      ██████╗ ███████╗ ',
 \ '   ██╔════╝██║   ██║██╔══██╗██║     ██╔═══██╗╚══███╔╝ ',
 \ '   ██║     ██║   ██║██████╔╝██║     ██║   ██║  ███╔╝  ',  
 \ '   ██║     ██║   ██║██╔══██╗██║     ██║   ██║ ███╔╝   ',  
 \ '   ╚██████╗╚██████╔╝██║  ██║███████╗╚██████╔╝███████╗ ',
 \ '    ╚═════╝╚═════╝  ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝ ',
 \ ]   

"UltiSnips

let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]
let g:UltiSnipsExpandTrigger="<s-q>"
let g:UltiSnipsJumpForwardTrigger="<s-q>"
let g:UltiSnipsJumpBackwardTrigger="<s-w>"

"Made directory in ~/.vim called UltiSnips and made snippets in them

"Vim-commentary

autocmd FileType cpp setlocal commentstring=//\ %s
nmap co <Plug>CommentaryLine 
xmap co <Plug>Commentary
autocmd FileType vimrc setlocal commentstring
" type co to comment line or in visual mode

"Vim-sneak

let g:sneak#label = 1  "highlights the word
let g:sneak#use_ic_scs = 1 "Disables case sensitivity
"type s to search after cursor and S to search before


"""""""auto-pairs""""""""

let g:AutoPairs = {'(':')', '[':']', '{':'}', '"':'"', "'":"'", '`':'`', }

"""""""tokyonight""""""""

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_transparent_background = 1
colorscheme tokyonight


""""""vlang-extensions"""""

let g:v_autofmt_bufwritepre = 1
let g:v_warnings = 1


"""""NERDTREE""""""

" Start NERDTree and leave the cursor in it.
let g:nerdtree_vis_confirm_open = 0
let g:NERDTreeWinSize = 25  " Set the NERDTree window width to 25 columns
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :NERDTreeFocus<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


