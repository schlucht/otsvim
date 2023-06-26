syntax on           " Syntax Highlighting aktiveren
set number          " Line Numbers anzeigen
set relativenumber  " Relative Nummerierung anzeigen
set linebreak       " Ganze Wörter in neue Zeile umbrechen
set showmode        " Aktuellen Modus in Statuszeile anzeigen
set scrolloff=5     " Cursor bei Scroll weiter oben halten
set mouse=a         " Scrollen mit der Mouse in Console und tmux
set lazyredraw      " Weniger Redraws bei Macros und co.
set cursorline      " Aktive Zeile markieren
set updatetime=300  " Schellere Darstellung	/ Refresh
"set cc=80          " Markierung 80 Zeilen-Rand
set laststatus=2    " Statuszeile immer anzeigen
set cmdheight=2     " Mehr Platz für Statusmeldungen
set shortmess+=c    " Don't pass messages to |ins-completion-menu|
set nowrap          " Wrap standardmäßig abschalten. Mit Leader w an-/abschaltenset tabstop=4
" ### Suche
set path+=**      " Damit kann mit :find alles, auch in Subfolder gefunden werden
set ignorecase    " Suche nicht Case-Sensentiv
set smartcase     " Aber wenn Großbuchstaben verwenden werden dann schon
" ### Sprache und Rechtschreibkorrektur
set helplang=de             " Deutsche Hilfe
set spelllang=de_de,en_us   " Deutsche und englische Rechtschreibung
"set spell                  " Rechtschreibkorrektur immer aktivieren
autocmd FileType markdown setlocal spell   " Spell bei Markdown aktivieren
autocmd FileType text setlocal spell       " Spell bei allgemeinen Textfiles aktivieren
set noswapfile
set hidden
" ### Verhalten von TABs und Einrücken bei Code 
set tabstop=2 softtabstop=2	shiftwidth=2    " Nur zwei Tab-Stopp einfügen
set expandtab           " Tabs in Spaces wandeln
set formatoptions+=j    " Immer Spaces anstatt Tabs
"set clipboard=unnamed  " Standard-Register (yy, dd, etc) IMMER in Zwischenablage kopieren 

let leader = " "
inoremap jj <esc> 
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap <space> :
nnoremap Y y$
" Durch Buffer steuern
nnoremap <silent> <leader>k :bp!<CR>
nnoremap <silent> <leader>j :bn!<CR>

command! W w
command! Q q


