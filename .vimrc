syntax on
colorscheme jellybeans

" set default register to the clipboard
set clipboard^=unnamed

" change cursor style in input mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set ttyfast

" turn on relative line numbers
set relativenumber

" set tab size to 4 spaces instead of tab char
set tabstop=4
set shiftwidth=4
set expandtab

" use highlight when searching
set hlsearch

set ruler

set stl=%n\:%f%r%m\ \|%{&ff}\/%{&fenc}\|\ \|%l\:%c\/%L\L\|\}
