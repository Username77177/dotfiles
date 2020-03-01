call plug#begin() " NERDTree - быстрый просмотр файлов Plug 'preservim/nerdtree'

" Просмотр папок
Plug 'preservim/nerdtree'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

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

" Python3 IDE в NeoVim
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Что-то типо Jupyter'а прямо в Vim
Plug 'metakirby5/codi.vim'

" Markdown
" sudo npm install instant-markdown-d -g
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

call plug#end()

