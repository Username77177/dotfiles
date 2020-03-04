"# Plugins configs

" NERDTree
" Размер NERDTree
let g:NERDTreeWinSize=30
" NERDTree справа
let g:NERDTreeWinPos = "right"
" Немного преукрасим NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Emmet
let g:user_emmet_mode='i'    "Активировать Emmet только в режиме ввода
" Активировать Emmet только в файлах .html, .css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'oceanicnext',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" NERDCommenter
" Разрешить комментировать пустые строки
let g:NERDCommentEmptyLines = 0

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Если линия все ещё сожержит комментарий (его знак или знаки), то
" расскоментировать далее эту строку (строки)
let g:NERDToggleCheckAllLines = 1
