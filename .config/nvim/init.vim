call plug#begin()
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'itmammoth/run-rspec.vim'
  Plug 'mattn/emmet-vim'
  Plug 'tveskag/nvim-blame-line'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'Raimondi/delimitMate'
  Plug 'mhartington/oceanic-next'
  Plug 'glepnir/oceanic-material'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'bogado/file-line'
  Plug 'Yggdroot/indentLine'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Rigellute/rigel'
  Plug 'neoclide/coc.nvim',{'branch': 'release'}
  Plug 'dense-analysis/ale'
  Plug 'ngmy/vim-rubocop'
  Plug 'ayu-theme/ayu-vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'ryanoasis/vim-devicons'
  Plug 'haishanh/night-owl.vim'
  Plug 'tjammer/blayu.vim'
  Plug 'zanglg/nova.vim'
  Plug 'flrnd/plastic.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-git'
  Plug 'tpope/vim-ragtag'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'tpope/vim-rbenv'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-vividchalk'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-unimpaired'
  Plug 'lifepillar/vim-solarized8'
  Plug 'scrooloose/nerdTree'
  Plug 'mhinz/vim-signify'
  Plug 'RRethy/nvim-base16'
  Plug 'joshdick/onedark.vim'
call plug#end()

set number
" set textwidth=0
set showmatch
set relativenumber
set nowrap
" set wrap nolist linebreak
" set showbreak=****
set breakindent
set breakindentopt+=sbr
" let &showbreak=' '
set cpoptions+=n
" set cursorline
" set cursorcolumn
"
set path+=**
set wildignore+=**/node_modules/**
command! MakeTags !ctags -R .

set hlsearch

set smartcase
" set ignorecase
set synmaxcol=3000
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set nojoinspaces

command! -nargs=0 Prettier :CocCommand prettier.formatFile

set ruler

set undolevels=1000
set backspace=indent,eol,start
" if hidden is not set, TextEdit might fail.
set hidden

" set title
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set omnifunc=htmlcomplete#CompleteTags

set statusline+=%#warningmsg#
set statusline+=%*

" vim-rails
let g:rails_projections = {
  \ "app/operations/*.rb": {
  \ "command": "operation",
  \ "affinity": "collection",
  \ "test": "spec/operations/%i_spec.rb",
  \ "template": "class {dirname|camelcase|capitalize}\n  class {basename|camelcase|capitalize}\n\    include Interactor\n\n    def call\n    end\n  end\nend"
  \ },
  \ "app/presenters/*.rb": {
  \ "command": "presenter",
  \ "affinity": "collection",
  \ "test": "spec/presenters/%i_spec.rb",
  \ "template": "class {dirname|camelcase|capitalize}\n  class {basename|camelcase|capitalize}\n\    include Interactor\n\n    def call\n    end\n  end\nend"
  \ },
  \ "app/javascript/src/*": {
  \ "command": "javascript",
  \ "affinity": "collection",
  \ "template": "class {dirname|camelcase|capitalize}\n  class {basename|camelcase|capitalize}\n\    include Interactor\n\n    def call\n    end\n  end\nend"
  \ },
\ }

" enable true colors support
set termguicolors
syntax on
colorscheme OceanicNext

"autocmd StdinReadPre * let s:std_in=1
let g:indentLine_concealcursor = '2'
let g:indentLine_char = "¦"

" ALE Global Configuration
let g:ale_lint_on_save = 0
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 0
" let g:ale_list_vertical = 1
let g:ale_echo_cursor = 0
let g:ale_virtualtext_cursor = 2
" let g:ale_cursor_detail= 1
let g:ale_floating_preview = 1 " Equivalent to the two below
" let g:ale_detail_to_floating_preview = 1
" let g:ale_hover_to_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_close_preview_on_insert = 1

nmap <silent> ge <Plug>(ale_detail)
nmap <silent> gp <Plug>(ale_previous_wrap)
nmap <silent> gn <Plug>(ale_next_wrap)
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
let g:ale_sign_info = ' '
let g:ale_virtualtext_prefix = '• '

highlight ALEErrorSign ctermfg=1 ctermbg=18 guifg=#2d2d2d guibg=#393939
highlight ALEVirtualTextError cterm=italic ctermfg=1 guifg=#2d2d2d
highlight link ALEWarningSign Todo
highlight ALEInfoSign ctermfg=4 ctermbg=18 guifg=#2d2d2d guibg=#393939
highlight ALEVirtualTextInfo cterm=italic ctermfg=4 guifg=#2d2d2d

highlight ALEError term=underline cterm=underline,bold gui=underline,bold
highlight ALEWarning term=underline cterm=undercurl gui=undercurl
highlight ALEInfo term=underline cterm=undercurl gui=undercurl

let g:rainbow_active = 1
let g:airline_symbols={}
let g:airline_symbols.maxlinenr = ''
let g:airline_skip_empty_sections = 1
let g:airline_theme = "oceanicnext"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:lightline = { 'colorscheme': 'oceanicnext' }

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#checking_symbol = ''
let g:airline#extensions#ale#open_lnum_symbol = ' :'
let g:airline#extensions#ale#close_lnum_symbol = ''

let g:blameLineGitFormat = '%an / %ar / %s'
let g:blameLineUseVirtualText = 1
nnoremap <silent> <leader>b :ToggleBlameLine<CR>
" autocmd BufEnter * EnableBlameLine

let g:NERDTreeMinimalUI=1
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" format json files with '='
autocmd FileType json setlocal equalprg=python\ -m\ json.tool

" Emmet Configurations
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" nnoremap <silent> <C-Right> <c-w>l
" nnoremap <silent> <C-Left> <c-w>h
" nnoremap <silent> <C-Up> <c-w>k
" nnoremap <silent> <C-Down> <c-w>j
nnoremap <S-Right> :bn<CR>
nnoremap <S-Left> :bp<CR>

"COC CONFIGURATION
"
" CocInstall
""  'coc-tslint'
""  'coc-json',
""  'coc-eslint',
""  'coc-html'
""  'coc-tsserver',
""  'coc-css',
""  'coc-yaml',
""  'coc-git'
"
"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Custom Map Coc Errors
nmap <silent> <c-n> <Plug>(coc-diagnostic-prev)
nmap <silent> <c-p> <Plug>(coc-diagnostic-next)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
"END OF COC CONFIGURATION

nmap <Up> <Nop>
nmap <Right> <Nop>
nmap <Left> <Nop>
nmap <Down> <Nop>
