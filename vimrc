"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13         
syntax on   "开启语法高亮"
"let g:solarized_termcolors=256"
"set background=dark     "设置背景色""
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab     "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
set cursorcolumn        "突出显示当前列"
set splitbelow  "分割布局"
set splitright
set mouse=v

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

"系统剪切板"
set clipboard=unnamed

set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

Bundle "lepture/vim-jinja"

call vundle#end()
filetype plugin indent on 

"NERDTREE config"
map <F2> :NERDTreeToggle<CR>

