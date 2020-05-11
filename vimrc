"go get -u github.com/gocolly/colly/...去掉vi的一致性"
set nocompatible
" 隐藏滚动条"    
set nu
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h18         
set nowrap  "设置不折行"
"set autoindent     "设置C样式的缩进格式"
set shiftwidth=4
set softtabstop=4

set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set ts=4 "tab转4个空格
set expandtab
set fenc=utf-8      "文件编码"
set backspace=2
set selection=exclusive
set matchtime=5
set incsearch
set hlsearch        "高亮搜索项"
set whichwrap+=<,>,h,l
set autoread
"set cursorline      "突出显示当前行"
"set cursorcolumn        "突出显示当前列"
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

"tagbar
Plugin 'majutsushi/tagbar'
"go 插件
Plugin 'fatih/vim-go'
"go 中的代码追踪。输入gd就可以自动跳转
Plugin 'dgryski/vim-godef'

"括号自动补全
Plugin 'jiangmiao/auto-pairs'
" one主题
"Plugin 'dracula/vim', { 'name': 'dracula' }
" grubox主题
Plugin 'morhetz/gruvbox'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on 
" 退出插入模式指定类型文件自动保存
au InsertLeave *.go write


" vim-go 插件
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2


" NERDTREE 
" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>

let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" hide pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] 
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1


" majutsushi/tagbar 插件打开关闭快捷键
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }



"主题配置 one 
"colorscheme dracula
" 主题solarized
syntax on
set background=dark
"set guioptions=  
"colorscheme gruvbox
"colorscheme solarized
"let g:solarized_termcolors=256

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1


"插件文档"
let g:SimpylFold_docstring_preview=1

"PEP8"
autocmd BufWritePost *.py call Flake8()




" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:godef_split=0
hi comment ctermfg=darkblue
