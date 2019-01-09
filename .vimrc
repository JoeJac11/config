colorscheme distinguished
syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set splitright
set splitbelow
set t_Co=256
set mouse=a
filetype plugin on
function Pyex(...)
    let line = ':!python3 % '
    for arg in a:000
        if arg != a:0
            let line .= arg
        endif
    endfor
    execute ':w'
    execute line
endfunction

