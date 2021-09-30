
"===========================
"==
"==	    set
"==
"===========================
"设置行号
set number
"设置语法高亮
syntax on
"设置相对行号
set relativenumber
"在光标处显示一条线
"set cursorline
"设置字不会超出屏幕，会换行显示，但是仍然在同一行
set wrap
"显示自己输入了什么命令
set showcmd
"在输入命令时，按tab可以有选项提示
set wildmenu
"设置文件格式为utf-8
set encoding=utf-8
"设置搜索高亮
set hlsearch
"设置搜索输入时，高亮可以同步
set incsearch
"搜索忽略大小写
set ignorecase
"搜索只认大写
set smartcase
"显示末尾空格
set list
"更改末尾空格显示
set listchars=tab:▸\ ,trail:♪
set scrolloff=8


"设置按p可以直接从系统剪切板粘贴
"set clipboard=unnamed

"===========================
"==
"==	    let
"==
"===========================
"将<LEADER>改为空格键
let mapleader=" "



"===========================
"==
"==	    map
"==
"===========================


"窗口切换
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sl :set splitbelow<CR>:split<CR>

map <C-h> <C-w>h
map <C-j> <C-w>l
map <C-l> <C-w>j
map <C-k> <C-w>k

map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>
"===========================
"==
"==	    noremap
"==
"===========================
"方向键(移动)
"
"	      ^
"	      k
"
"	<h         j>
"	
"	      l
"	      v
"
noremap j l
noremap l j
noremap H 7h
noremap J 7l
noremap L 7j
noremap K 7k
noremap K 7k
noremap U vU
noremap ff gg=Ggi
noremap V :call setreg("l",line('.'))<CR>V
noremap v :call setreg("n",col('.'))<CR>v

"===========================
"==
"==	    nnoremap
"==
"===========================
nnoremap q ZZ
nnoremap R :source ~/.config/nvim/init.vim<CR>
nnoremap Q ZZ
nnoremap z q
noremap . $
noremap , 0
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>
nnoremap <C-S> <ESC>:w<CR>
nnoremap <C-q> <ESC>:q!<CR>
nnoremap <C-z> <ESC>u
nnoremap <C-x> <ESC><c-r>
nnoremap <C-P> <ESC><C-I>



"===========================
"==
"==	    inoremap
"==
"===========================
"
inoremap <c-s> <ESC>:w<CR>i
inoremap <C-q> <ESC>:q!<CR>
inoremap <C-z> <ESC>ui
inoremap <C-x> <ESC><c-r>i
inoremap <C-x> <ESC><c-r>i
inoremap ff <ESC>gg=Ggi
"inoremap <C-P> <ESC><C-i>i
"inoremap <C-O> <ESC><C-O>i
"
"
"
"
"
"
"
"
"
"
"
"===========================
"	i-->在当前光标字符前插入
"	a-->在当前光标字符后插入
"	o-->在当前光标的下一行插入
"
"	I-->在当前行首位插入
"	A-->在当前行末尾插入
"	O-->在当前光标的上一行插入

"	:w 保存
"	:q 不保存退出(感叹号为强制执行)
"	:vs 竖着分屏
"	:sp 横着分屏

"	:% s/替换前的内容/替换后的内容/g  s表示替换 g表示全局
"
"===========================
"==
"==	   快速修正错误
"==	（在终端中也适用）
"==
"===========================

"	ctrl+h删除上一个字符
"	ctrl+w删除上一个单词
"	ctrl+h删除当前行
"
"

"===========================
"==
"==	    快捷键
"==
"===========================


"	ctrl+c或者ctrl+[来代替ESC
"	(ctrl+c)可能会使插件退出
"	gi为上一次编写的位置
"
"	w/W 移到下一个 word/WORD 开头。e/E 下一个word/WORD尾
"	b/B 回到上一个word/WORD开头，可以理解为backword
"	word指的是以非空白符分割的单词，WORD以空白符分割的单词
"	f{word}行间搜索 ;是去下一次结果 
"	f是往后搜索，F是往前搜索
"
"	ctrl+u向上翻页，ctrl+f向下翻页
"	ciw(change in word)
"	同理yiw,diw,ciw
"===========================
"	substitute 命令允许我们查找并且替换掉文本，并且支持正则式
"	:[range]s[ubstitute]/(pattern)/(string)/[flags]
"	range 表示范围 比如：10，20表示10-20行，%表示全部pattern是要替换的模式，string是替换后文本
"
"	替换标志位
"	Flags有几个常用的标志
"	g(global) 表示全局范围内执行
"	c(confirm)表示确认，可以确认或者拒绝修改
"	n(number)报告匹配到的次数而不替换，可以用来查询匹配次数	
"	zz可以将当前显示移至屏幕中间
"
"
"

"===========================
"==
"==	   复制粘贴	
"==
"===========================
"
"	yy 复制一行
"	dd 删除(剪切)一行
"	p 粘贴
"	"+y 复制到系统剪切板
"	"+p 从系统剪切板粘贴
"
"===========================
"==
"==	  vim主题配色 
"==
"===========================
"	
"	:colorscheme可以显示当前配色方案
"	:colorscheme <ctrl+d>可以显示所有的配色方案
"	:colorscheme 配色名 可以更改配色
"
"	可以从https://github.com/flazz/vim-colorschemes下载配色
"
"
"
"
"===========================
"==
"==	 vim-plug 
"==
"===========================
"
call plug#begin('~/.config/nvim/plugged')

"状态栏美化插件
Plug 'vim-airline/vim-airline'
"主题插件
Plug 'connorholyday/vim-snazzy'
"目录树插件
Plug 'scrooloose/nerdtree'
"vim-go插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"coc补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""标签插件
Plug 'kshenoy/vim-signature'
""翻译"
Plug 'voldikss/vim-translator'

call plug#end()
"主题
color snazzy


"===========================
"==
"==	vim-go
"==
"===========================

if get(g:, "go_doc_keywordprg_enabled", 1)
  " keywordprg doesn't allow to use vim commands, override it
  nnoremap <buffer> <silent> ¥ :GoDoc<cr>
endif

"===========================
"==
"==	nerdtree 
"==
"===========================
nnoremap tt :NERDTreeToggle<CR>
"显示隐藏文件
let NERDTreeShowHidden=1
"不显示以下类型
let NERDTreeIgnore = [ 
	\ '.git$',
	\ '.swp$',
	\ ]
"如果只剩下nerdtree则退出
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"修改箭头
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"let g:NERDTreeMapOpenInTab = 'o'


"===========================
"==
"==	   coc 
"==
"===========================

let g:coc_global_extensions = [
        \ 'coc-actions',
        \ 'coc-go',
        \ 'coc-css',
        \ 'coc-diagnostic',
        \ 'coc-flutter-tools',
        \ 'coc-gitignore',
        \ 'coc-html',
        \ 'coc-json',
        \ 'coc-lists',
        \ 'coc-prettier',
        \ 'coc-python',
        \ 'coc-snippets',
        \ 'coc-sourcekit',
        \ 'coc-stylelint',
        \ 'coc-syntax',
        \ 'coc-tasks',
        \ 'coc-todolist',
        \ 'coc-translator',
        \ 'coc-tslint-plugin',
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-vetur',
        \ 'coc-yaml',
        \ 'coc-yank']
inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()
function! Show_documentation()
        call CocActionAsync('highlight')
        if (index(['vim','help'], &filetype) >= 0)
                execute 'h '.expand('<cword>')
        else
                call CocAction('doHover')
        endif
endfunction
nnoremap <LEADER>h :call Show_documentation()<CR>

nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nnoremap <c-c> :CocCommand<CR>
" Text Objects
xmap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap kf <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap kc <Plug>(coc-classobj-i)
omap kc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
"nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" coctodolist
nnoremap <leader>tn :CocCommand todolist.create<CR>
nnoremap <leader>tl :CocList todolist<CR>
nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'David Chen'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
"===========================
"==
"==	   format
"==
"=============================
"获得当前行号
function! V_line_number()
	call setreg("e",line('.'))
	call setreg("m",col('.'))
	let num_line_format=@e-@l+1
	let num_col_format=@m-@n+1
"g是行的值
	call setreg("g",num_line_format)
"h是竖得值
	call setreg("h",num_col_format)
endfunction
function! Format_js()
	call V_line_number()
	call setreg("x", ",wi'\<ESC>/\:\<CR>i'\<ESC>jji'\<ESC>A',\<ESC>\:nohlsearch\<CR>l")
	call setreg("i",@g."@x")
endfunction
"vnoremap ff :call setreg("e",line('.'))<CR> :@l<CR> :call Format_js()<CR>
vnoremap ff :call Format_js()<CR> :@l<CR> :normal @i<CR>
	
"let @x="\/\{\\\|\}\<ESC>\:nohlsearch\<CR>yj"
"map fz @x
""去除空格
"map fg @y
"let @y=",/\: \<CR>jx\:nohlsearch\<CR>"
"
""格式化字典
"map ff @z
"let @z=",wi'\<ESC>/\:\<CR>i'\<ESC>jji'\<ESC>A',\<ESC>\:nohlsearch\<CR>l"

"===========================
"==
"==	   一键运行
"==
"=============================
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

map <LEADER>s :call CompileRunGcc()<CR>

"===========================
"==
"==	   一键括号
"==
"=============================
func! AutoBracket()
"	echo &filetype
	if &filetype == 'html'
		call setreg('y',col('.'))
		call setreg('z',"\<ESC>hviwda<\<ESC>pa>")
		let autobracket = @y+1
		call setreg('x',"a\<\/\<ESC>pa>\<ESC>")
		call setreg('y',",".autobracket."j")
"		\<\/\<ESC>pa>\<ESC>gi
	:normal @z
	:normal @x
	:normal @y
	endif

endfunc
inoremap HH <ESC>:call AutoBracket()<CR>a
"===========================
"==
"==	   一键注释
"==
"=============================
func! Annotation()
"	echo &filetype
	if &filetype == 'vim'
		call setreg('z',"i\"")
	elseif &filetype == "go"
		call setreg('z',"i\/\/")
	elseif &filetype == 'sh'
		call setreg('z',"i\#")
	elseif &filetype == 'python'
		call setreg('z',"i\#")
	elseif &filetype == 'css'
		call setreg('z',"\<ESC>0i\/\*\<ESC>A\*\/")
	elseif &filetype == 'html'
		call setreg('z',"\<ESC>0i\<\!\-\-\<ESC>A\-\-\>")
	endif
	:normal @z
endfunc
inoremap ?? <ESC>:call Annotation()<CR>a



"===========================
"==
"==	    翻译
"==
"===========================
vnoremap <silent> fy <Plug>TranslateW

"===========================
"==
"== 	signature标签插件
"==
"===========================
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"===========================
"==
"==	    exec 
"==
"===========================
"exec是打开终端时，运行:后面的指令
exec "nohlsearch"

"===========================
"==
"==	     auto
"==
"===========================
"打开文件，自动回到上次退出位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"===========================
"==
"==	    template 
"==
"===========================
noremap <LEADER>f :call TemplateFormat()<CR>
function! TemplateFormat()
	if &filetype == "html"
		r !echo -e "<\!DOCTYPE html>\n<html>\n<head>\n	<meta charset="UTF-8">\n	<title></title>\n</head>\n<body>\n\n\n</body>\n</html>"
		normal ggddG
	elseif &filetype == "sh"
		r !echo -e "\#\!/bin/bash"
		normal ggddG
	elseif &filetype == "go"
		r !echo -e "package main\n\nimport "fmt"\n\nfunc main() {\n 	fmt.Println("♧")\n}\n
		normal ggddG
	endif
endfunction
autocmd BufNewFile *.py 0r ~/.config/nvim/template/python.py
autocmd BufNewFile *.c 0r ~/.config/nvim/template/c.c

