"设置行号
set number
"忽略大小写
set ignorecase
"set nowrapscan
"高亮搜索
set hlsearch
"
set incsearch
"tab转化为4个字符
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"自动缩进
set autoindent
set showcmd
set novisualbell
set nocompatible
set noeb
set confirm
set noexpandtab
set smarttab
set history=1000


" markdown close floder
set nofoldenable

if version >=603
    set helplang=cn
    set encoding=utf-8
endif

"打开文件类型插件
filetype plugin on

"快捷键
"打开关闭目录树
nmap <F1> :NERDTreeToggle<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>
"当只剩下目录树时，自动关闭vim。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")&&b:NERDTreeType == "primary") | q | endif
"打开关闭大纲
nmap <F2> :TagbarToggle<CR>
imap <F2> <Esc>:TagbarToggle<CR>

nmap <F4> :r!date<CR>
imap <F4> <Esc>:r!date<CR>

nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式
				

"设置安装配置插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ggreer/the_silver_searcher'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'joker1007/vim-markdown-quote-syntax'
call vundle#end()


let NERDTreeShowHidden=1
let g:NERDTreeShowIgnoredStatus = 1
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeIndicatorMapCustom = {
   \ "Modified"  : "✹",
   \ "Staged"    : "✚",
   \ "Untracked" : "✭",
   \ "Renamed"   : "➜",
   \ "Unmerged"  : "═",
   \ "Deleted"   : "✖",
   \ "Dirty"     : "✗",
   \ "Clean"     : "✔︎",
   \ 'Ignored'   : '☒',
   \ "Unknown"   : "?"
   \ }

