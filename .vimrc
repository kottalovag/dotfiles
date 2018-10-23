"https://stackoverflow.com/questions/235839/indent-multiple-lines-quickly-in-vi

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

"Vim has intelligent indentation based on filetype
if has ("autocmd")
    " File type detection. Indent based on filetype. Recommended.
    filetype plugin indent on
endif
