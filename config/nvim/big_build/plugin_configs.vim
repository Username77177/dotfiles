"# Plugins configs

" NERDTree
" Размер NERDTree
let g:NERDTreeWinSize=30
" NERDTree справа
let g:NERDTreeWinPos = "right"
" Немного украсим NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Coc-bind-download
" Функция для установки пакетов для COC
function CocPacks()
          :CocInstall coc-html coc-python coc-emmet coc-css coc-ccls coc-ultisnips
  endf

" Вызов функции с помощью <C-\>
nmap <C-\> :call CocPacks()<CR>

" ALE
" Устанавливаем, как будет показываться ошибка и предупреждение
let g:ale_sign_error = '>'
let g:ale_sign_warning = '?'
" Проверяем файлы только при сохранении (для экономии энергии)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

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


" Deoplete
" Запускать Deoplete при запуске
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_completion_start_length = 1
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = []

" Markdown
" Отключаем автостарт
" :InstantMarkdownPreview - включить просмотр Markdown
let g:instant_markdown_autostart = 0
" Включаем MathJax
let g:instant_markdown_mathjax = 1
" Включаем автоскролл
let g:instant_markdown_autoscroll = 0
" Обновление только после сохранения
let g:instant_markdown_slow = 1

" Indent Line (Tabs)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_conceallevel = 1

" Latex
" Язык (стандартный LaTeX)
let g:tex_flavor='latex'
" Просмотр PDF
let g:vimtex_view_method='zathura'
" Маскировка скобок
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" JS-Beautify
autocmd FileType javascript noremap <buffer>  <leader>b :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>b :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <leader>b :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>b :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>b :call CSSBeautify()<cr>
