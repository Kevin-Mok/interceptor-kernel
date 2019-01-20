" set x=y {{{ "
set number
" set background=dark
set encoding=utf-8
set background=light
" set t_Co=256
filetype plugin on
syntax on
set tabstop=4
set tw=80
set linebreak
" set colorcolumn=80
set shiftwidth=4
set autoindent
" set mouse=c
set mouse=a
set clipboard+=unnamedplus
set foldmethod=marker
set linespace=5
" cursor indicator {{{ "

" set listchars=tab:\|\
" set list
" set cursorcolumn
" set cursorline

" }}} cursor indicator "

set timeoutlen=500
set hlsearch
set noswapfile
" }}} set x=y "

" commands for file types {{{ "

autocmd VimResized * wincmd =
autocmd BufNewFile,BufRead .* set syntax=sh
autocmd Filetype css,htmldjango,html,tex,txt,markdown set tabstop=2 shiftwidth=2 expandtab
autocmd BufRead commit-msg.txt set filetype=gitcommit tw=72
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd Filetype markdown set textwidth=0

autocmd BufWritePost key_*.txt !sync-shortcuts
autocmd VimLeave *.tex !tex-clean %

" " auto-reload vimrc {{{ "

" augroup myvimrc
	" au!
	" au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
" augroup END

" " }}} auto-reload vimrc "

" }}} commands for file types "

" Mappings {{{ "

" function keys {{{ "
map <F4> :xa<CR>
map <F5> :q!<CR>
" map <F6> :make -C ~/Documents/resume cv<CR>
" map <F7> :AutoSaveToggle<CR>
map <F8> :!clear && shellcheck %<CR>
map <F9> :VimtexCompile<CR>:VimtexView<CR>
" map <F9> :VimtexCompile<CR>
nnoremap <F10> :set paste<CR>"+p:set nopaste<CR>
" }}} function keys "

map <S-Enter> O<ESC>
" swap text visually
vnoremap <C-P> <Esc>`.``gvP``P

" splits {{{ "
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
" Maximize height/width.
nnoremap <C-g> <C-W>_
nnoremap <C-w> <C-W>|
" }}} splits "

" leader mappings {{{ "
let mapleader="\<Space>"
" replace until end of line
nnoremap <leader>c c$
" delete entire buffer
nnoremap <leader>d d$
" delete entire buffer
nnoremap <leader>dg ggdG
" delete line into system clipboard
nnoremap <leader>D "+dd
" delete entire buffer into system clipboard
nnoremap <leader>DA "+ggdG
" find merge conflicts
nnoremap <leader>fc /[<>=\|]\{7\}<CR>
" reload folds
nnoremap <leader>ff :set foldmethod=marker<CR> zM
" toggle search highlighting
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" help
nnoremap <leader>he :help 
nnoremap <leader>ht :set tabstop=2 shiftwidth=2 expandtab<CR>
nnoremap <leader>vhe :vert help 
" move cursor to middle of line
nnoremap <leader>m :call cursor(0, len(getline('.'))/2)<CR>
" apply normal command to selection
vnoremap <leader>n q:anorm 
" don't wrap lines
nnoremap <leader>nw :set nowrap<CR>
" check if in neovim
nnoremap <leader>nv :echo has('nvim')<CR>
" Plug commands
nnoremap <leader>p "*p
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
" don't break lines
nnoremap <leader>py :set tw=0<CR>
" reload file
nnoremap <leader>r :e<CR>
" replace in next x lines
nnoremap <leader>re q:i.,.+s///g<ESC>Fsi
" replace in line
nnoremap <leader>rl q:i.s///g<left><left><left>
" replace in visual selection
vnoremap <leader>r q:is///g<ESC>3ha
" reload vim config
nnoremap <leader>rv :source $MYVIMRC<CR>
" replace in entire file
nnoremap <leader>R q:i%s///g<ESC>2F/i
" run current file in shell
nnoremap <leader>sh :!%:p<CR>
" sort lines until end of file
nnoremap <leader>so q:i.,$sort<CR>
" sort lines
nnoremap <leader>sol q:i.,.+sort<ESC>Fsi
" set syntax to shell (for dotfiles)
nnoremap <leader>sys :set syn=sh<CR>
" open vimrc in vertical split
nnoremap <leader>vv :vsp ~/.vimrc<CR>
" format current line
nnoremap <leader>ww Vgq
" format this and next line
nnoremap <leader>www Vjgq
" copy next thing to system clipboard
" nnoremap <leader>y "+
" nnoremap <leader>Y "+Y
nnoremap <leader>y y$
" yank entire buffer
nnoremap <leader>yg ggyG
" toggle fold
nnoremap <leader>z za

" }}} leader mappings "

" }}} Mappings "
