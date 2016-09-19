" -----------------   Author: ismdeep
" -----------------    Email: ismdeep@live.com
" -----------------  WebSite: http://www.ismdeep.com
" -----------------     Date: 2012-08-13

" colorscheme candy
" colorscheme codeschool
" colorscheme distinguished
" colorscheme solarized
" colorscheme vividchalk   " vividchalk theme
" colorscheme desert           " 灰褐色主题
syntax enable
" set background=dark
" colorscheme solarized
set guifont=Courier\ New:h10 " 字体 && 字号
set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu!                      " 显示行号
set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set clipboard=unnamedplus    " 设置复制和粘帖直接使用系统剪切板
"set noswapfile

"syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
"filetype plugin on           " 针对不同的文件类型加载对应的插件
"filetype plugin indent on    " 启用自动补全
set ignorecase               " 自动补全不区分大小写

set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.hs,*.vim 2match


" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8

" wm                  开启文件浏览窗口，对应插件为WinManager
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

" TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

" :FencView           查看文件编码和更改文件编码
let g:fencview_autodetect=1

" :LoadTemplate       根据文件后缀自动加载模板
let g:template_path='D:\Apps\Gvim\vimfiles\template\'

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='ismdeep'
let g:vimrc_email='ismdeep@live.com'
let g:vimrc_homepage='http://www.ismdeep.com'

" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

au GuiEnter * set t_vb=

