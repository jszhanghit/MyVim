"Vundle{{{
set nocompatible
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
				"从Github进行安装：
				"Plugin 'user/plugin'
				"从http://vim-scripts.org/vim/scripts.html进行安装：
				"Plugin 'plugin_name'
				"从另一个git软件库进行安装：
				"Plugin 'git://git.another_repo.com/plugin'
				"从本地文件进行安装：
				"Plugin 'file:///home/user/path/to/plugin'
				"你还可以定制其他参数，比如插件的运行时路径，如果你在自行编写插件，或者就想从不是~/.vim的另一个目录来装入它，这非常有用。
				"Plugin 'rstacruz/sparkup', {'rtp': 'another_vim_path/'}
				"如果你有同样名称的插件，可以更名插件，那样它就不会冲突。
				"Plugin 'user/plugin', {'name': 'newPlugin'}
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/candy.vim'
Plugin 'vividchalk.vim'
Plugin 'altercation/vim-colors-solarized' "以上三个是配色
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'better-snipmate-snippet' "提供快速生成代码段的功能 
Plugin 'Auto-Pairs'
Plugin 'Tagbar'
Plugin 'DoxygenToolkit.vim'
Plugin 'Tabular'  "然后将光标移动到这几个等号的第一行。然后在命令行下输入  :Tab /=   即可将等号对齐。当然对齐的也可以不止是等号，还可以是其他的符号或字母。
Plugin 'mattn/calendar.vim'
Plugin 'DrawIt'
		"*绘制箭头：  输入"^"  或输入"v"  或输入"<"  或输入">"。
		" *绘制斜线：  输入"[PageDown]"  或输入"[PageUp]"  或输入"[End]"  或输入"[Home]".
		" *绘制扁平箭头：  输入"\^"  或输入"\v"  或输入"\<"  或输入"\>".
		" *绘制方块：  1）在绘制起点输入"[Ctrl]v"  2）移动到绘制的终点  3）输入"\b"。
		" *绘制椭圆：  1）在绘制起点输入"[Ctrl]v"  2）移动到绘制的终点  3）输入"\e"。
		" *绘制拐角线  1）在绘制起点输入"[Ctrl]v"  2）移动到绘制的终点  3）输入"\l"。
Plugin 'mbbill/undotree'
Plugin 'L9'
Plugin 'EasyGrep' "\vv  - Grep for the word under the cursor, match all occurences, like |gstar| 在文件中搜索当前光标下的单词
                  "\vV  - Grep for the word under the cursor, match whole word, like |star|  全词匹配搜索, 同:Grep !word;
                  "\va  - Like vv, but add to existing list   与vv相似, 搜索结果append在上次搜索结果之后;
                  "\vA  - Like vV, but add to existing list    与vV相似, 搜索结果append在上次搜索结果之后;
                  "\vr  - Perform a global search search on the word under the cursor and prompt for a pattern with which to replace it.  Replace :替换;
                  "\vo  - Select the files to search in and set grep options 打开选项菜单;
Plugin 'a.vim'
Plugin 'vim-scripts/Visual-Mark'
 "For both vim and gvim, use [mm] to toggle a visual mark.
Plugin 'FuzzyFinder'
                  "FuzzyFinder 提供下列命令:
                  "FufBuffer - Buffer mode (fuf-buffer-mode) 
                  "FufFile - File mode (fuf-file-mode) 
                  "FufDir - Directory mode (fuf-dir-mode) 
                  "FufMruFile - MRU-File mode (fuf-mrufile-mode) 
                  "FufMruCmd - MRU- Command mode (fuf-mrucmd-mode) 
                  "FufBookmark - Bookmark mode (fuf-bookmark-mode) 
                  "FufTag - Tag mode (fuf-tag-mode) 
                  "FufTaggedFile - Tagged-File mode (fuf-taggedfile-mode) 
                  "FufJumpList - Jump-List mode (fuf-jumplist-mode) 
                  "FufChangeList - Change-List mode (fuf-changelist-mode) 
                  "FufQuickfix - Quickfix mode (fuf-quickfix-mode) 
                  "FufLine - Line mode (fuf-line-mode) 
                  "FufHelp - Help mode (fuf-help -mode)
Plugin 'bufexplorer.zip'
		  "\be打开历史文件列表
		  "\bs水平新建历史文件列表窗口
		  "\bv垂直新建历史文件列表
Plugin 'minibufexpl.vim'
Plugin 'Mark' "\m 高亮或反高亮一个单词
              "\n 清除当前的单词高亮(光标处)若光标处无高亮的单词就清除所有的单词高亮显示
              "\r 按照输入的正则表达式高亮单词
              "\* 跳转到当前高亮的下一个单词：
              "\# 跳转到当前高亮的上一个单词
              "\/ 跳转到任一下一个高亮单词
              "/? 跳转到任一上一高亮单词
Plugin 'The-NERD-tree'
Plugin 'uguu-org/vim-matrix-screensaver' "娱乐而已 屏保
Plugin 'The-NERD-Commenter'  "\cc 注释当前行和选中行
                             "\cn 没有发现和\cc有区别
                             "\c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
                             "\cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
                             "\ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
                             "\cs 添加性感的注释，代码开头介绍部分通常使用该注释
                             "\cy 添加注释，并复制被添加注释的部分
                             "\c$ 注释当前光标到改行结尾的内容
                             "\cA 跳转到该行结尾添加注释，并进入编辑模式
                             "\ca 转换注释的方式，比如： /**/和//
                             "\cl \cb 左对齐和左右对其，左右对其主要针对/**/
                             "\cu 取消注释
Plugin 'matchit.zip' "使%不仅能够匹配简单的<>()，还能匹配<html></html>之类标签的功能 
Plugin 'luochen1990/rainbow' "括号分色显示
Plugin 'AutoComplPop' "变量自动补全
Plugin 'python_fold_compact'
Plugin 'c.vim'
Plugin 'tpope/vim-surround'
                            " `Hello world!`           ds`          Hello world!
                            " `Hello world!`           cs"'        'Hello world!'
                            "  Hello world!             ysiw)       Hello (world)!
"Plugin 'vtags'
"Plugin 'automatic'

call vundle#end()            " required
filetype plugin indent on    " required
"}}}
" __            ___    ___     ____        ____
"|  |\         /  /\  /  /\   /    |\     /    |\
"|  ||JZHANG  /  / / /__/ /  /     ||    /     ||
"|  ||张金帅 /  / /  \__\/  /  /|  ||   /  /|  ||
"|  || ^_^  /  / /  ___    /  / |  ||  /  / |  ||
"|  ||     /  / /  /  /\  /  / /|  || /  / /|  ||
"|  ||    /  / /  /  / / /  / / |  ||/  / / |  ||
"|  || ☺ /  / /  /  / / /  / /  |  |/  / /  |  ||
"|  ||  /  / /  /  / / /  / /   |     / /   |  ||
"|  || /  / /  /  / / /  / /    |  ☼ / /    |  ||
"|  ||/  / /  /  / / /  / /     |   / /     |  ||
"|  |/  / /  /  / / /  / /      |__/ /      |  ||
"|     / /  /  / / /  / /    ☻  \__\/       |  ||
"|    / /  /  / / /  / /                    |  ||
"|   / /  /  / / /  / /   WELCOME COME HERE |  ||
"|__/ /  /__/ / /__/ / GVIM IS SO BEAUTIFUL |__||
"\__\/   \__\/  \__\/                       \__\|
"自身设置{{{
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
"}}}
"基础设置{{{
colorscheme molokai
set number
set ignorecase smartcase
"set relativenumber

"set cursorcolumn "高亮显示光标所在列
"set cursorline "高亮显示光标所在行
"hi CursorLine cterm=underline
"hi CursorColumn cterm=underline
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

set shortmess=atI

set noerrorbells " 不让vim发出讨厌的滴滴声

se shiftwidth=4
se tabstop=4
se expandtab

se guioptions-=T
se guioptions-=m

set listchars=tab:>-,trail:-
"set listchars=tab:>-,trail:-,eol:>,precedes:%

set encoding=utf-8
set termencoding=utf-8
"set fileencodings=Unicode,ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=ucs-bom,utf-8,chinese,latin-1
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set helplang=cn "帮助文档加载中文文档
set ambiwidth=double

let g:powerline_loaded=1
set guifont=DejaVu_Sans_Mono_for_Powerline:h12 "字体设置
set gfw=DejaVu_Sans_Mono_for_Powerline:h12

"set cmdheight=1 "设置命令行的高度
se linebreak
iab xdate <c-r>=strftime("20%y-%m-%d %X %a")<cr>
"if executable("vimtweak.dll") 
	"autocmd guienter * call libcallnr("vimtweak","SetAlpha",202)  " 222可以在200~250之间调整 
"endif 

"winpos 10 10                                     "指定窗口出现的位置，坐标原点在屏幕左上角
"set lines=40 columns=150                          "指定窗口大小，lines为高度，columns为宽度
au GUIEnter * simalt ~x

let s:myfiletype = expand("%:e")
if s:myfiletype == "v"
    set dictionary+=$VIM/vimfiles/Wordlist/Verilog.list
endif

"折叠设置{{{
set foldenable              " 开始折叠
":set foldmethod=manual
set foldmethod=marker       "依标记折叠
"set foldmethod=syntax       " 设置语法折叠
" manual 手工定义折叠
" indent 更多的缩进表示更高级别的折叠
" expr 用表达式来定义折叠
" syntax 用语法高亮来定义折叠
" diff 对没有更改的文本进行折叠
" marker 对文中的标志折叠
set foldcolumn=1

"光标遇到折叠，折叠就打开
"set foldopen=all
"移开折叠时自动关闭折叠
"set foldclose=all

"au BufWinLeave *.* silent mkview "每次文件关闭的时候都会自动执行:mkview
"set viewoptions=folds,cursor " 保存折叠和光标
"au BufWinEnter *.* silent loadview "而每次文件打开的时候都会自动执行:loadview
"zf zo zc zd zr zm zR zM zn zi zN
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为
""在折叠间移动：
"1  [z  到当前打开折叠的开始。如果已在开始处，移到包含这个折叠的折叠开始处。
"2  ]z  到当前打开折叠的结束。如果已在结束处，移到包含这个折叠的折叠结束处。
"3  zj  把光标移动到下一个折叠的开始处。
"4  zk  把光标移动到前一个折叠的结束处。
:highlight folded guibg=black guifg=cyan
:highlight foldcolumn guibg=green guifg=darkred
"}}}}}}
"airline{{{

set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set statusline=\ %<%f[%1*%m%*%n%r%h]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%l%)\
" 设置在状态行显示的信息
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#whitespace#enabled = 0 " 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#symbol = '!'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

"let g:airline#extensions#tabline#left_sep = ' '   "tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep = '|'      "tabline中buffer显示编号
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#branch#format = 'custombranchname'
"let g:airline_section_b = '%{strftime("%c")}' "获取时间
let g:airline_symbols.maxlinenr = ''
"let g:airline#extensions#tabline#enabled = 1 "上方的名称，默认是关闭的，改为0也是关闭的
set encoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" let g:airline#extensions#bufferline#enabled = 1 "上方的buffer，，默认是关闭的，改为0也是关闭的
let g:airline_section_b = '(*^.^*) Jszhang ^(oo)^'
let g:airline_section_c="%{getcwd()}\\%t"
let g:airline_section_x="%y"
let g:airline_section_y='BN: %{bufnr("%")}'
"let g:airline_detect_modified=1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"language messages zh_CN.utf-8
set ambiwidth=double
"}}}
"DoxygenToolkit{{{
"let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
"let g:DoxygenToolkit_paramTag_pre="@Param "
"let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="JSZHANG"
"let g:DoxygenToolkit_licenseTag="My own license"
"let g:DoxygenToolkit_briefTag_funcName="yes"
"map <leader>da :DoxAuthor<CR>
"map <leader>df :Dox<CR>
"map <leader>db :DoxBlock<CR>
"map <leader>dc a /* */<LEFT><LEFT><LEFT>
"}}}
"{{{ calendar.vim
" 日期格式 year-month-day
let g:calendar_date_endian      = "big"
" 日期分隔符
  let g:calendar_date_separator   = "-"
" 打开日历时的视图
let g:calendar_view             = "year"
" 设置View布局
let g:calendar_views            = ['year', 'day', 'month', 'week', 'clock', 'days']
"}}}
"ctrlp{{{
let g:ctrlp_map = 'clp'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"}}}
"EasyGrep{{{
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2,
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"
"}}}
"NERDTree{{{
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif "当该界面是位移界面时自动关闭vim
"autocmd vimenter * NERDTree "该配置为vim启动时就自动打开列表
"}}}
"NERD_commenter-------------------------------------------------{{{
" plugin - NERD_commenter.vim 注释代码用的，
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
" 注：count参数可选，无则默认为选中行或当前行
"-----------------------------------------------------------------
"let NERDSpaceDelims=1 " 让注释符与语句之间留一个空格
"let NERDCompactSexyComs=1 " 多行注释时样子更好看
let g:NERDMenuMode = 0 "}}}
"AutoComplPop{{{
let g:AutoComplPop_Behavior = {
\ 'c': [ {'command' : "\\",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ]
\}
"}}}
" rainbow{{{
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['lawngreen','gold','aqua','magenta', 'orange', 'seagreen3', 'firebrick','springgreen','royalblue3','teal','yellowgreen','hotpink','deeppink'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimfuncbody', 'start=/\[/ end=/\]/ containedin=vimfuncbody', 'start=/{/ end=/}/ fold containedin=vimfuncbody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-za-z0-9]+)(\s+[-_:a-za-z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\}
\}
" guifgs': gui界面的括号颜色(将按顺序循环使用)
" 'ctermfgs': 终端下的括号颜色(同上,插件将根据环境进行选择)
" 'operators': 描述你希望哪些运算符跟着与它同级的括号一起高亮(注意：留意需要转义的特殊字符，更多样例见这里, 你也可以读vim帮助 :syn-pattern)
" 'parentheses': 描述哪些模式将被当作括号处理,每一组括号由两个vim正则表达式描述
" 'separately': 针对文件类型(由&ft决定)作不同的配置,未被单独设置的文件类型使用*下的配置,值为0表示仅对该类型禁用插件
" 省略某个字段以使用默认设置}}}
" minibuufexpl.vim-----------------------------------------------------{{{
"可以用<c-h,j,k,l>切换到上下左右的窗口中去,就像:
"c-w,h j k l    向"左,下,上,右"切换窗口.
let g:miniBufExplMapWindowNavVim = 1

"是用<c-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1

"<c-tab> 向前循环切换到每个buffer上,并在但前窗口打开
"<c-s-tab> 向后循环切换到每个buffer上,并在但前窗口打开&nbsp;　　注：minibufexplore默认是这两个快捷
let g:miniBufExplMapCTabSwitchBufs = 1

"let g:miniBufExplModSelTarget = 1

":minibufexplorer    " open and/or goto explorer
":cminibufexplorer   " close the explorer if it's open
":uminibufexplorer   " update explorer without naviting
":tminibufexplorer   " toggle the explorer window open and closed


"上面那个狭长的窗口就是minibufexplorer窗口, 其中列出了当前所有已经打开
"的buffer, 当你把光标置于这个窗口时, 有下面几个快捷键可以用:
"<tab>   向前循环切换到每个buffer名上
"<s-tab> 向后循环切换到每个buffer名上
"<enter> 在打开光标所在的buffer
"d       删除光标所在的buffer

"在命令模式下：
":bn   打开当前buffer的下一个buffer
":bp   打开当前buffer的前一个buffer
":b"num"   打开指定的buffer，"num"指的是buffer开始的那个数字，例如输入:b7
"======================================================================================}}}
"undotree{{{
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
"}}}
"Tagbar{{{
"let g:tagbar_width = 30
"nmap <F10> :TagbarToggle<CR>
"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
"let g:tagbar_autopreview = 1
"关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0 "}}}
"Calendar.vim{{{
let g:calendar_view = "month"
let g:calendar_views = ['month','week','days','day','clock','year']  
"}}}
