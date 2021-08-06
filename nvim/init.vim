
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader=" "

syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set list
set listchars=tab:▸\ ,trail:$
set scrolloff=8

set backspace=indent,eol,start

set laststatus=2

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


exec "nohlsearch"


noremap j l
noremap l j
noremap J 7l
noremap L 5j
noremap H 7h
noremap K 5k
noremap <C-z> u
noremap <LEADER><CR> :nohlsearch<CR>
noremap , 0
noremap . $
noremap q :wq<CR>
noremap Q :wq<CR>
noremap z q
noremap t z



map <C-q> :q!<CR>
map <C-s> :w<CR>
map R :source $MYVIMRC<CR>

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
"宏命令快捷键
let @x="\/\{\\\|\}\<ESC>\:nohlsearch\<CR>yj"
map fz @x
"去除空格
map fg @y
let @y=",/\: \<CR>jx\:nohlsearch\<CR>"

"格式化字典
map ff @z
let @z=",wi'\<ESC>/\:\<CR>i'\<ESC>jji'\<ESC>A',\<ESC>\:nohlsearch\<CR>l"

"翻译"
nmap <silent> fy <Plug>TranslateW


"查找括号
map fk :call Query_K()<CR>
function Query_K()
	:normal mk
	:normal l
	:normal ,
	let Kl = 1
	let Kr = 0
	let K = Kl - Kr
	let Num = 0
"	while K>0
	let i=0
	while i<18000
		let i+=1
		:normal fz
		if Num > line(".")
			echo Kl
			echo Kr
			break
		endif
		let Num = line(".")
"		echo Num
"		echo line(".")
		let Klr = @0
"		echo Klr
		if Klr == "{"
			let Kl = Kl + 1
		endif
		if Klr == "}"
			let Kr = Kr + 1
		endif

		let K = Kl - Kr
"		echo Klr
	endwhile
	echo "你要查找的括号在".line(".")."行"

		echo Kl
		echo Kr

endfunction

"折叠"
map tt  :call Query_zf_tt()<CR>
function Query_zf_tt()
	let zf_number_start = line(".")
	:normal l
	let zf_number_end = line(".")
	:normal k
	let zf_number = zf_number_end - zf_number_start
	if zf_number == 1
		let zf_start = line(".")
		:normal mk
		:normal l
		:normal ,
		let Kl = 1
		let Kr = 0
		let K = Kl - Kr
		let Num = 0
		while K>0
			:normal fz
			if Num > line(".")
				echo Kl
				echo Kr
				break
			endif
			let Num = line(".")
			let Klr = @0
	"		echo Klr
			if Klr == "{"
				let Kl = Kl + 1
			endif
			if Klr == "}"
				let Kr = Kr + 1
			endif
	
			let K = Kl - Kr
			echo ""
			endwhile
			let zf_end = line(".")
			let @w = "\:".zf_start."\<CR>"
			:normal @w
			let @w = "tf\:".zf_end."\<CR>"
			:normal @w
			echo "折叠"
	else
		:normal td
		echo "取消折叠"
	endif


endfunction



"插件
call plug#begin('~/.config/nvim/plugged')


Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
"标签插件
Plug 'kshenoy/vim-signature'
"翻译"
Plug 'voldikss/vim-translator'

call plug#end()

color snazzy


" ===
" === signature标签插件
" ===
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


" ===
" === coc.nvim
" ===
"警告:出现了pyx之类的  请运行
"python3 -m pip install --user --upgrade pynvim
"pip install pylint
"pip install jedi
let g:coc_global_extensions = [
        \ 'coc-actions',
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


"template
autocmd BufNewFile *.py 0r ~/.config/nvim/template/python.py

