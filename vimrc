"去掉vi的一致性"
set nocompatible
" 隐藏滚动条"    
set nu
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13         
set nowrap  "设置不折行"
set cindent     "设置C样式的缩进格式"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set selection=exclusive
set matchtime=5
set incsearch
set hlsearch        "高亮搜索项"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
set cursorcolumn        "突出显示当前列"
set splitbelow  "分割布局"
set splitright
set mouse=vi

"定义leader"
let mapleader=";"

"切换分割布局"
"下"
nnoremap <C-J> <C-W><C-J>
"上"
nnoremap <C-K> <C-W><C-K>
"右"
nnoremap <C-L> <C-W><C-L>
"左"
nnoremap <C-H> <C-W><C-H> 

"代码折叠 按za"
set foldmethod=indent
set foldlevel=99
"折叠快捷键"
nnoremap <space> za


"系统剪切板"
set clipboard=unnamed

set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
"目录树
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
"搜索插件
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pearofducks/ansible-vim'
"代码折叠插件"
Plugin 'tmhedberg/SimpylFold'
"自动缩进插件"
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

"主题插件
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()
filetype plugin indent on 

" hide pyc
"let NERDTreeIgnore=['\.pyc$', '\~$'] 


"主题配置
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>")


"插件文档"
let g:SimpylFold_docstring_preview=1

"PEP8"
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
	\ set textwidth=4
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

"标记多余空白行"
au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

"YCM自动补全配置"
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


let python_highlight_all=1
syntax on   "开启语法高亮

"NERDTREE config"
map <F2> :NERDTreeToggle<CR>

