call plug#begin() " NERDTree - быстрый просмотр файлов Plug 'preservim/nerdtree'

" Просмотр папок
Plug 'preservim/nerdtree'
"" Дополнение к NERDTree (Git Integration)
Plug 'Xuyuanp/nerdtree-git-plugin'

" Нормальная визуализация табов
Plug 'Yggdroot/indentLine'

" Линия статуса
Plug 'itchyny/lightline.vim'

" Emmet для Vim
Plug 'mattn/emmet-vim'

" Темы
Plug 'mhartington/oceanic-next'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'

" CSS/SCSS/HTML подсветка цвета 
Plug 'gorodinskiy/vim-coloresque'

" HTML, CSS, JS beautify ( нормальное форматирование )
Plug 'maksimr/vim-jsbeautify'

" Zen mode
Plug 'junegunn/goyo.vim'

" Git Integration
Plug 'airblade/vim-gitgutter'

" NERDCommenter (плагин для комментирования)
Plug 'preservim/nerdcommenter'

" Сниппеты (сноски кода)
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" ALE (Проверка на синтаксические ошибки)
Plug 'dense-analysis/ale'

" i3 syntax
Plug 'PotatoesMaster/i3-vim-syntax'

" Автодополнение (всё-таки Coc)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown
" sudo npm install instant-markdown -g
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" UML в Vim
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'

" FuzzyFinder в Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Быстрое передвижение
Plug 'easymotion/vim-easymotion'

" LaTeX
Plug 'lervag/vimtex'

" Поддержка С, C++
" Plug 'xavierd/clang_complete'

" Deoplete
" Plug 'Shougo/deoplete.nvim'

" Python3 IDE в NeoVim
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Что-то типо Jupyter'а прямо в Vim
" Plug 'metakirby5/codi.vim'

call plug#end()

