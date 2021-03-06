"Vundle
"Sets the runtime path to include and initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"List plugins here - new plugins will be installed after listing them here
"then running :PluginInstall in vim
Plugin 'gmarik/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'othree/html5.vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jalvesaq/Nvim-R'
Plugin 'ervandew/screen'
Plugin 'jalvesaq/southernlights'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()
"End list of plugins and Vundle

"------------------------------------------------------------------------------
"General Settings

"Convenience Options
set encoding=utf-8			"Use utf-8 as default encoding
set t_Co=256				"Enable 256 bit color
set background=dark			"Tells Vim that the background color is black
filetype indent plugin on	"Automatic detection, indenting, and highlighting based on file type
syntax on					 "Turns on syntax highlighting
colorscheme southernlights	"Defines the scheme for syntax highlighting
set nocompatible			"Use Vim defaults
set wildmenu				"Automatically complete :commands by pressing tab
set cmdheight=2				"Set the command line height to two lines
set number					"Always show the line numbers.
set relativenumber			"Show relative line numbers.
set showmatch				"Briefly jump to matching bracket when a new one is inserted

"Spell Check
set spell					"Enable spell check
hi clear SpellBad			"Don't highlight misspelled words
hi SpellBad cterm=underline,bold ctermfg=red "Changes misspelled words to underlined, bold, red text

"Searching
set wrapscan				"Continue searching at top of document after bottom is reached
set hlsearch				"Highlights all instances of searched string
set incsearch				"Highlights search results while typing
set ignorecase				"Case insensitive searching
set smartcase				"Case sensitive searching when search string has upper case
set infercase				"Fixes the case of automatically completed keywords

"Default tabs, indents, and wrapping
set linebreak				"Lines break at spaces instead of mid-word
set autoindent				"Automatically indent lines
set copyindent				"Auto-indent is based on the format from the previous line
set shiftwidth=4			"Number of characters used for an auto-indent
set tabstop=4				"Number of characters that a tab is displayed as

"Enable folding & set space to control folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

"------------------------------------------------------------------------------
"Settings for Specific File Types
"au is an autocommand that watches for events (FileType) that match patterns
	"(html) then runs a particular command (setlocal ...)

"HTML
au FileType html,css setlocal tabstop=2 softtabstop=2 shiftwidth=2 tw=80

"Python
au FileType py setlocal tabstop=4 softtabstop=4 shiftwidth=4 tw=80

"R
"
"To run R outside of nvim's terminal emulator
"let R_in_buffer = 0
"
"Turn Spelling off in R
au Filetype r set nospell
