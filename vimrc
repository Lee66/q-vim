" System vimrc file for MacVim
" set nocompatible
set encoding=utf-8
scriptencoding utf-8

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix,dos
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

filetype off

set background=dark
set guifont=Fantasque\ Sans\ Mono:h14
set linespace=3

set tags=tags;
set autochdir
set hidden

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set foldenable      " 允许折叠
set foldmethod=indent
set foldlevel=99

set number                      " 显示行号
set tabstop=4                   " 设定tab长度为4
set shiftwidth=4                " 缩进的空格数
set softtabstop=4
set expandtab                 " 是否在缩进和遇到Tab键时使用空格代替; 使用noexpandtab取消设置
set smarttab
set autoindent                  " 自动缩进
set smartindent
set ignorecase
set smartcase
set cindent
set confirm

set showcmd              "在状态栏显示当前输入的命令
set showmode			 "显示INSERT NORMAL等
set lazyredraw           " Don't redraw while executing macros (good performance config)

set hlsearch
set incsearch

set showmatch                   " 显示括号配对情况
set paste                       " 支持外部复制(好像不管用)
set clipboard+=unnamed          " 与windows共享剪贴板

set history=99                  " keep 99 lines of command history
set showmatch                   " 显示括号配对情况

set guioptions-=T               " windows下隐藏工具栏
"set guioptions-=r               " 把gui右边的滑动条去掉
set guioptions-=L               " 把gui左边的滑动条去掉
set guioptions-=m               " 把gui的菜单栏去掉
set guioptions-=b
set shortmess=atI               " 启动的时候不显示援助索马里儿童的提示(是I而不是L)

set completeopt=longest,menu
set ruler
set cursorline
set autowrite
set magic
set nowrap
set linebreak
set iskeyword+=_,$,@,%,#,-

set backspace=indent,eol,start

set undofile

set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 禁止生成临时文件
set nobackup
set noswapfile

"set scrolloff=5
set sidescrolloff=3
set pumheight=20

set formatoptions+=j              " Delete comment character when joining commented lines
set wildmenu
set wildignore+=*.un~,*.pyc,*.zip,*.rar,*.dll,*.dmg
set wildignore+=*.jpg,*.png,*.jpeg,*.gif,*.svg,*.ico
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/bower_components/*

set t_Co=256

" if has("persistent_undo")
"    set undodir = ~/.undodir/
" endif

"autocmd GUIEnter * simalt ~x  	" windows下启动vim最大化
if has('gui_running')
    set lines=48 columns=200
endif

if v:version >= 800
  packadd! matchit
else
  runtime! macros/matchit.vim
endif

nmap <tab> %
vmap <tab> %
inoremap <C-tab> <c-x><c-o>
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 "let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 Bundle 'fholgado/minibufexpl.vim'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'vim-airline/vim-airline'
 Bundle 'vim-airline/vim-airline-themes'
 Bundle 'ctrlpvim/ctrlp.vim'
 Bundle 'godlygeek/tabular'
 Bundle 'terryma/vim-multiple-cursors'
 Bundle 'ap/vim-css-color'
 Bundle 'tpope/vim-haml'
 Bundle 'rstacruz/vim-hyperstyle'
 Bundle 'genoma/vim-less'
 Bundle 'Raimondi/delimitMate'
 Bundle 'hail2u/vim-css3-syntax'
 Bundle 'othree/html5.vim'
 Bundle 'docunext/closetag.vim'
 Bundle 'Valloric/MatchTagAlways'
 Bundle 'easymotion/vim-easymotion'
 Bundle 'terryma/vim-expand-region'
 Bundle 'tpope/vim-surround'
 Bundle 'tpope/vim-repeat'
 Bundle 'bronson/vim-trailing-whitespace'
 Bundle 'epilande/vim-es2015-snippets'
 Bundle 'epilande/vim-react-snippets'
 Bundle 'SirVer/ultisnips'
 Bundle 'honza/vim-snippets'
 Bundle 'jceb/emmet.snippets'
 Bundle 'tacahiroy/ctrlp-funky'
 Bundle 'dyng/ctrlsf.vim'
 Bundle 'pangloss/vim-javascript'
 Bundle 'othree/javascript-libraries-syntax.vim'
 Bundle 'maksimr/vim-jsbeautify'
 Bundle 'Yggdroot/vim-mark'
 Bundle 'scrooloose/nerdtree'
 Bundle 'Xuyuanp/nerdtree-git-plugin'
 Bundle 'airblade/vim-gitgutter'
 Bundle 'tpope/vim-fugitive'
 Bundle 'iamcco/markdown-preview.vim'
 Bundle 'Yggdroot/indentLine'
 Bundle 'elzr/vim-json'
 Bundle 'dkprice/vim-easygrep'
 Bundle 'mbbill/undotree'
 Bundle 'mattn/emmet-vim'
 Bundle 'neoclide/vim-jsx-improve'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'ivyl/vim-bling'
 Bundle 'Valloric/ListToggle'
 Bundle 'mhinz/vim-startify'
 Bundle 'matze/vim-move'
 Bundle 'tommcdo/vim-exchange'
 Bundle 'AndrewRadev/sideways.vim'
 Bundle 'leafgarland/typescript-vim'
 if v:version >= 800
 Bundle 'w0rp/ale'
 endif

 """"""""themes"""""""""""""""
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'chriskempson/vim-tomorrow-theme'
 Bundle 'morhetz/gruvbox'
 Bundle 'NLKNguyen/papercolor-theme'
 Bundle 'nanotech/jellybeans.vim'

call vundle#end()

let g:solarized_termcolors=256

filetype on
filetype plugin on
filetype plugin indent on

syntax enable
syntax on

"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'dark0'
let g:gruvbox_vert_split = 'dark0'
colorscheme gruvbox
hi VertSplit guifg=#504945 ctermfg=239

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

augroup customAutocmd
  au!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  au BufNewFile,BufRead .tern-project setf json
  au FileType json,vim setlocal shiftwidth=2 softtabstop=2
  au FileType html,css,sass,scss,less,php,javascript EmmetInstall
  au BufWinEnter * if line("'\"") > 0 | if line("'\"") <= line("$") | exe("norm '\"") | else | exe "norm $" | endif | endif
augroup END

" airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" minibufexplorer
hi MBENormal               guifg=#928374 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#8ec07c guibg=fg
hi MBEVisibleChanged       guifg=#CC241D guibg=fg
hi MBEVisibleActiveNormal  guifg=#AFD700 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplSplitToEdge = 1
let g:miniBufExplCycleArround = 1
let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplShowBufNumbers = 0
if has('gui_running')
    let g:did_minibufexplorer_syntax_inits = 1
endif
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>

"delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" YCM
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
  \   'css,less,sass,scss' : ['-', 're!:\s*']
  \ }
nnoremap <leader>w :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>wr :YcmCompleter GoToReferences<CR>
nnoremap <leader>wd :YcmCompleter GetDoc<CR>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_skip_key='<C-o>'
let g:multi_cursor_quit_key='<Esc>'

" EasyMotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
nmap f <Plug>(easymotion-f)
nmap F <Plug>(easymotion-F)
nmap t <Plug>(easymotion-t)
nmap T <Plug>(easymotion-T)
nmap ? <Plug>(easymotion-Fn)
nmap / <Plug>(easymotion-sn)
nmap n <Plug>(easymotion-next)
nmap N <Plug>(easymotion-prev)
nmap <leader>. <Plug>(easymotion-repeat)

nmap <Leader><Leader>l <Plug>(easymotion-w)
nmap <Leader><Leader>j <Plug>(easymotion-j)
nmap <Leader><Leader>k <Plug>(easymotion-k)
nmap <Leader><Leader>h <Plug>(easymotion-b)

" vim-trailing-whitespace
map <leader><space> :FixWhitespace<cr>
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

" Tabular
nnoremap <Leader>a :Tabularize /

" UltiSnips
map <leader>ue :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = '<a-tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsEnableSnipMate = 1
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

" ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_tilde_homedir = 1
let g:ctrlp_map = '<leader>p'
nnoremap <Leader>pr :CtrlPMRU<Cr>
nnoremap <Leader>pm :CtrlPMixed<Cr>
nnoremap <Leader>pb :CtrlPBuffer<Cr>
nnoremap <Leader>pl :CtrlPLine<Cr>
nnoremap <Leader>pu :CtrlPUndo<Cr>
nnoremap <Leader>pc :CtrlPChange<Cr>
nnoremap <Leader>pq :CtrlPQuickfix<Cr>
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
nnoremap <Space> :CtrlP<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['mixed', 'line', 'funky', 'undo', 'changes']
let g:ctrlp_match_window = 'results:50'

" CtrlSF
nnoremap <Leader>sf :CtrlSF<space>
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_mapping = {
    \ 'next': 'n',
    \ 'prev': 'N',
    \ }
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '100'

let g:used_javascript_libs = 'jquery,requirejs,underscore,angularjs,react,flux'

augroup jsbeautify
  autocmd!
  autocmd FileType javascript noremap <buffer>  <leader>b :call JsBeautify()<cr>
  autocmd FileType html noremap <buffer> <leader>b :call HtmlBeautify()<cr>
  autocmd FileType css,sass,scss,less noremap <buffer> <leader>b :call CSSBeautify()<cr>
  autocmd FileType javascript.jsx noremap <buffer> <leader>b :call JsxBeautify()<cr>
  autocmd FileType json noremap <buffer> <leader>b :call JsonBeautify()<cr>

  autocmd FileType javascript vnoremap <buffer>  <leader>b :call RangeJsBeautify()<cr>
  autocmd FileType html vnoremap <buffer> <leader>b :call RangeHtmlBeautify()<cr>
  autocmd FileType css,sass,scss,less vnoremap <buffer> <leader>b :call RangeCSSBeautify()<cr>
  autocmd FileType javascript.jsx vnoremap <buffer> <leader>b :call RangeJsxBeautify()<cr>
  autocmd FileType json vnoremap <buffer> <leader>b :call RangeJsonBeautify()<cr>
augroup END

" NERDTree
let g:NERDTreeMouseMode = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeIgnore=['\~$', '\v\.(pyc|ico|png|jpeg|gif|mp4|exe|dmg|jpg|pdf|pem|)$']
noremap <f5> :NERDTreeFind<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimEnter * NERDTree

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:mwDefaultHighlightingPalette = 'maximum'
nmap m <Plug>MarkSearchOrCurNext
nmap M <Plug>MarkSearchOrCurPrev
nmap <Leader>c :nohl<cr><Plug>MarkAllClear

nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gd :Gdiff<cr>
nnoremap <Leader>gc :Gcommit -m""
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gl :Glog
nnoremap <Leader>gp :Gpush<cr>
nnoremap <Leader>gpp :Gpull<cr>

nnoremap <F4> :UndotreeToggle<cr>
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

let g:gitgutter_sign_column_always = 1
let g:gitgutter_override_sign_column_highlight = 0
"let g:gitgutter_max_signs = 1000

" markdown-preview
let g:mkdp_auto_start = 1
let g:mkdp_path_to_chrome = 'open -a Safari'

let g:indentLine_enabled = 1
let g:indentLine_fileType = ['javascript', 'javascript.jsx', 'python', 'php', 'css', 'scss', 'less']

let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
    \'html' : {
    \    'indent_blockelement': 1
    \}
\}

" vim-jsx-improve
let g:jsx_improve_motion_disable = 1

noremap <silent> <C-C> :call NERDComment(1, "Sexy")<CR>
noremap <silent> <C-X> :call NERDComment(1, "Uncomment")<CR>

" easygrep
let g:EasyGrepCommand = 1
let g:EasyGrepRecursive = 1
let g:EasyGrepJumpToMatch = 0
let g:EasyGrepWindowPosition = 'botright'
let g:EasyGrepRoot = 'search:.git,.svn,.hg'
let g:EasyGrepFilesToExclude = '.svn,.git,.hg,node_modules,bower_components,dist,build,buildDev,images,*.swp,*~,*.pyc'
nnoremap <Leader>vc :Grep 

" matchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php': 1,
    \ 'javascript' : 1
    \}

" vim-bling
"let g:bling_time = 80
let g:bling_count = 2
let g:bling_color_gui_fg = 'white'
let g:bling_color_gui_bg = '#af005f'

" ale
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 0
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '▸'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#error_symbol = g:ale_sign_error . ' '
let g:airline#extensions#ale#warning_symbol = g:ale_sign_warning . ' '
hi ALEErrorSign ctermfg=196 ctermbg=NONE guifg=#af005f guibg=NONE
hi ALEWarningSign ctermfg=220 ctermbg=NONE guifg=#ff8700 guibg=NONE

" ale tslint
let g:ale_typescript_tslint_config_path = '~/.tslint.json'

" ListToggle
let g:lt_quickfix_list_toggle_map = '<f2>'
let g:lt_location_list_toggle_map = '<f3>'
let g:lt_height = 10

" startify
let g:startify_padding_left = 30
let g:startify_bookmarks = [ {'c': '~/.vim/vimrc'}, {'z': '~/.zshrc'}, {'h': '/etc/hosts'}]
let g:startify_enable_special = 0
let g:startify_commands = [
    \ ':NERDTree',
    \ ':ALEToggle'
    \ ]
let g:startify_list_order = [
            \ [repeat(' ', g:startify_padding_left - 4) . '最近访问:'],
            \ 'files',
            \ [repeat(' ', g:startify_padding_left - 4) . '已存会话:'],
            \ 'sessions',
            \ [repeat(' ', g:startify_padding_left - 4) . '已存书签:'],
            \ 'bookmarks',
            \ [repeat(' ', g:startify_padding_left - 4) . '常用命令:'],
            \ 'commands',
            \ ]
let g:start_header = [
          \ '                                                                     ▄               ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄',
          \ '                                                                    ▐░▌             ▐░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌',
          \ '                                                                     ▐░▌           ▐░▌  ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌   ▐░▐░▌',
          \ '  ██████╗  ██╗  ██████╗  ██╗ ██████╗   ██████╗ ██╗   ██╗              ▐░▌         ▐░▌       ▐░▌     ▐░▌▐░▌ ▐░▌▐░▌',
          \ ' ██╔═══██╗ ██║ ██╔═══██╗ ██║ ██╔══██╗ ██╔═══██╗╚██╗ ██╔╝               ▐░▌       ▐░▌        ▐░▌     ▐░▌ ▐░▐░▌ ▐░▌',
          \ ' ██║   ██║ ██║ ██║   ██║ ██║ ██████╔╝ ██║   ██║ ╚████╔╝                 ▐░▌     ▐░▌         ▐░▌     ▐░▌  ▐░▌  ▐░▌',
          \ ' ██║▄▄ ██║ ██║ ██║▄▄ ██║ ██║ ██╔══██╗ ██║   ██║  ╚██╔╝                   ▐░▌   ▐░▌          ▐░▌     ▐░▌   ▀   ▐░▌',
          \ ' ╚██████╔╝ ██║ ╚██████╔╝ ██║ ██████╔╝ ╚██████╔╝   ██║                     ▐░▌ ▐░▌           ▐░▌     ▐░▌       ▐░▌',
          \ '  ╚══▀▀═╝  ╚═╝  ╚══▀▀═╝  ╚═╝ ╚═════╝   ╚═════╝    ╚═╝                      ▐░▐░▌        ▄▄▄▄█░█▄▄▄▄ ▐░▌       ▐░▌',
          \ '                                                                            ▐░▌        ▐░░░░░░░░░░░▌▐░▌       ▐░▌',
          \ '                                                                             ▀          ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ ',
          \'',
          \'',
          \ repeat(' ', 6) . repeat('=', 100)
          \]
hi StartifyHeader ctermfg=172 guifg=#D79926

function! s:filter_header(lines) abort
    let l:longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let l:centered_lines = map(copy(a:lines),
        \ 'repeat('' '', (&columns / 2) - (l:longest_line / 2)) . v:val')
    return l:centered_lines
endfunction
let g:startify_custom_header = s:filter_header(g:start_header)

" vim-move
let g:move_map_keys = 0
vmap <silent> <leader>j <Plug>MoveBlockDown:call repeat#set("\<leader>j", v:count)<CR>
vmap <silent> <leader>k <Plug>MoveBlockUp:call repeat#set("\<leader>k", v:count)<CR>
nmap <silent> <leader>j <Plug>MoveLineDown:call repeat#set("\<leader>j", v:count)<CR>
nmap <silent> <leader>k <Plug>MoveLineUp:call repeat#set("\<leader>k", v:count)<CR>

" sideways.vim
nnoremap <silent> <leader>h :SidewaysLeft<cr>
nnoremap <silent> <leader>l :SidewaysRight<cr>
