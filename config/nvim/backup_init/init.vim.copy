source ~/bspwm-ground-config/config/nvim/plugins.vim
source ~/bspwm-ground-config/config/nvim/plugin_configs.vim

"# Binds
" Комбинация клавиш jkl - действует как Escape в режиме Insert
imap jkl <ESC>

" Комбинация клавиш jks - действует как Escape + сохранение 
" в режиме вставки
imap jks <ESC>:w<CR>

" F2 чтобы выходить из PasteMode (мод для вставки текста)
set pastetoggle=<F2>

" <leader> теперь пробел
let mapleader = " "

" В нормальном режиме Space+f вызывает :NERDTree
" Ctrl+c - комментирует строки
nmap <leader>f :NERDTreeToggle<CR>
vmap <C-c> <plug>NERDCommenterToggle
nmap <C-c> <plug>NERDCommenterToggle

nmap <leader>z :Goyo<CR>

""""PLUGINS BINDS""""

""" ALE
" Навигация между замеченными ошибками
nmap <silent> <leader>j <Plug>(ale_next_wrap)
nmap <silent> <leader>k <Plug>(ale_previous_wrap)

""" Emmet
" Активировать дополнение Emmet на Tab+e
" Использовать Emmet (автодополнить код)
let g:user_emmet_expandabbr_key = '<tab>e'

""" UltiSnips
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-n>"
let g:UltiSnipsExpandTrigger = "<tab>"

"""""

"# UI config

" Делаем Vim цветным ( с темой и синтаксисом )
set nocompatible 
set t_Co=256
syntax enable

" Тема для **NeoVim**
colorscheme OceanicNext

"# UX config

" Делаем автозапуск Omnifunc (автодополнение)
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Делаем нормальные табы
set expandtab
set smarttab
" 1 таб = 4 пробела
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

