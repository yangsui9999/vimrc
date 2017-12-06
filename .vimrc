"开启语法高亮
syntax enable

colorscheme solarized
set number

"隐藏顶部标签栏
set nocompatible

"隐藏滚动条"
set guioptions-=r
set guioptions-=L
set guioptions-=b

"隐藏顶部标签栏
set showtabline=0

"字体
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

"solarized主题设置在终端下的设置
let g:solarized_termcolors=256

"设置背景色
set background=dark

"设置不折行
set nowrap

"设置以unix的格式保存文件
set fileformat=unix

"设置C样式的缩进格式
set cindent

"设置table长度
set tabstop=4

"同上
set shiftwidth=4

"显示匹配的括号
set showmatch

"距离顶部和底部5行
set scrolloff=5

"命令行为两行
set laststatus=2

"文件编码
set fenc=utf-8
set backspace=2

"启用鼠标
set mouse=a
set matchtime=5

"忽略大小写
set ignorecase
set incsearch

"高亮搜索项
set hlsearch

"不允许扩展table
set noexpandtab

"文件修改之后自动读入
set autoread

set whichwrap+=<,>,h,l

"突出显示当前行
set cursorline

"突出显示当前列
set cursorcolumn

" 映射ESC
imap jj <Esc>

function! s:surround()
    let word = expand("<cword>")
    let wrap= input("wrap with: ")
    let command = "s/".word."/".wrap.word.wrap."/"
    execute command
endfunction
nmap cx :call <SID>surround()<CR>


"vundle配置开始===============================
filetype off

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'

" 安装插件写在这之前
call vundle#end()
filetype plugin indent on
" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
" h: vundle         - 获取帮助
"vundle配置结束===============================

"NERDTree配置开始===============================

"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>

let NERDTreeChDirMode=1

"显示书签"
let NERDTreeShowBookmarks=1

"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

"窗口大小"
let NERDTreeWinSize=25

"NERDTree配置===============================


"powerline airline配置开始===============================

"let g:airline_theme='simple'

let g:airline_powerline_fonts = 1

" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1

" 顶部tabline显示方式
let g:airline#extensions#tabline#left_sep = ' '

let g:airline#extensions#tabline#left_alt_sep = '|'

"powerline airline配置结束===============================


"you-complete-me 配置开始===============================

"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0

set completeopt=longest,menu

let g:ycm_python_binary_path = '/usr/local/bin/python'

"python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/local/bin/python'

"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1

"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1

let g:ycm_collect_identifiers_from_comments_and_strings = 0

"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2

"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1

" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0

"字符串中也开启补全"
let g:ycm_complete_in_strings = 1

"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'

"上下左右键行为"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

"you-complete-me 配置结束===============================

"autopep8配置开始===============================

"缩进指示线"
let g:indentLine_char='┆'

let g:indentLine_enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1

"autopep8配置结束===============================
