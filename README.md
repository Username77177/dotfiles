# Немного о репозитории

## Если вы хотите использовать актуальную версию i3, то пожалуйста используйте ветку i3-ground-rain
Этот репозиторий содержит все основные конфигурационные файлы, которые я использую.

Среди программ:

* **i3** или **bspwm**
* rofi
* polybar
* neovim
* *ranger* или *vifm*
* alacritty
* tmux
* mpd

![Terminal](https://raw.githubusercontent.com/Username77177/dotfiles/master/img/Screenshot%202020-03-01_21:30.png)
![Wallpapers with Polybar](https://raw.githubusercontent.com/Username77177/dotfiles/master/img/Screenshot%202020-03-01_21:31.png)
![#](https://raw.githubusercontent.com/Username77177/dotfiles/master/img/Screenshot%202020-03-01_21:39.png)
![##](https://raw.githubusercontent.com/Username77177/dotfiles/master/img/Screenshot%202020-03-01_21:40.png)

### Плагины Neovim
**Просмотр папок**

`preservim/nerdtree`

**Линия статуса**

`itchyny/lightline.vim`

**Emmet для Vim**

`mattn/emmet-vim`

**Темы**

`mhartington/oceanic-next`

`sjl/badwolf`

`morhetz/gruvbox`

**CSS/SCSS/HTML подсветка цвета**

`gorodinskiy/vim-coloresque`

**Zen mode**

`junegunn/goyo.vim`

**Git Integration**

`airblade/vim-gitgutter`

**NERDCommenter (плагин для комментирования)**

`preservim/nerdcommenter`

**Сниппеты (сноски кода)**

`SirVer/ultisnips |  honza/vim-snippets`

**ALE (Проверка на синтаксические ошибки)**

`dense-analysis/ale`

**i3 syntax**

`PotatoesMaster/i3-vim-syntax`

**Автодополнение (всё-таки Coc)**

`neoclide/coc.nvim, {branch: release}`

**Python3 IDE в NeoVim**

`python-mode/python-mode, { for: python, branch: develop }`

**Что-то типо Jupyter'а прямо в Vim**

`metakirby5/codi.vim`

**Markdown**

`suan/vim-instant-markdown, {for: markdown}`

**UML в Vim**

`aklt/plantuml-syntax`

`scrooloose/vim-slumlord`

**FuzzyFinder в Vim**

`junegunn/fzf, { do: { -> fzf#install() } }`

**Быстрое передвижение**

`easymotion/vim-easymotion`

**LaTeX**

`lervag/vimtex`

# Горячие клавиши

## NeoVim
`jkl` - ESC

`jks` - ESC + сохранить (*:w*)

`Space` - дополнительная главная клавиша в нормальном режиме (*далее просто* `S`)

`S+z` - перейти в режим Zen (goyo + limelight)

`S+f` - открыть просмотр файлов NERDTree

`Ctrl+c` - закоментировать строку или выделение

`Tab+e` - преобразовать выражение Emmet

`S+j или k` - перейти к следующей (*или предыдущей*) ошибке, замеченной ALE

`F2` - выйти или войти в режим вставки в Vim

`Tab` - автодополнить выражение снипеттом

`S+m` - открыть Markdown файл в браузере

`S+S+w` - EasyMotion

`Ctrl+j` - перейти к следующему изменяемому полю в UltiSnips

`Ctrl+k` - перейти к предыдущему изменяемому полю в UltiSnips

## Tmux
*Ctrl* тут отмечен как **С**

`C+a` - клавиша префикса (*ранее Ctrl+b*)

**Сначала нажимается префикс, а потом уже следующие комбинации**

`hjkl` - перемещение между окнами

`HJKL` - увеличить размер панели с соответствующей стороны

`-` - разделить окно горизонтально

`_` - разделить окно вертикально

`> или <` - поменять текущую и предыдущую панель местами

`C+f` - поиск сессии

`C+h` - предыдущее окно

`C+l` - следующее окно

**Для переключения между окнами можно использовать Shift+стрелки, однако я рекомендую вариант выше**

`Tab` - последнее окно

## bspwm (sxhkd)

`M` - мод-кнопка (Win)

`M+c` - открыть прошлое окно

`M+v` - открыть следующее окно
