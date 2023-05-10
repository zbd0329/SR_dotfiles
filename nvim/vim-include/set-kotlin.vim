" Kotlin

if exists("g:loaded_kotlin_setting") || &cp
  finish
endif
let g:loaded_kotlin_setting = 1

"* tagbar 설정
let g:tagbar_type_kotlin = {
    \ 'ctagstype' : 'Kotlin',
    \ 'sort': 0,
    \ 'kinds' : ['e:form', 't:ToDo'],
    \}


" https://github.com/fwcd/kotlin-language-server/blob/main/EDITORS.md#vim
" let g:LanguageClient_serverCommands = {
"     \ 'kotlin': ["kotlin-language-server"],
"     \ }

let g:comrade_key_fix = 'scm'

function! NewKotlinFile()
    echom "New Kotlin file"
    if getline(1) == ''
        echom "Start"
        let l:package = ['//' . expand('%:p:h'), ';']
        " let l:package = substitute(expand('%:p'), '\(.*\)/src/main/kotlin/\(.*\).kt', '\2', '')
        " let l:package = substitute(l:package, '/', '.', 'g')
        call setline(1, l:package)
    endif

    " find root (.git) directory
    let l:root = finddir('.git', '.;')
endfunction

augroup vim_kotlin_coc
    autocmd FileType kotlin nmap scr <Plug>(coc-rename)
    autocmd FileType kotlin nmap <silent> <C-]> <Plug>(coc-definition)
    autocmd FileType kotlin nmap <silent> gy <Plug>(coc-type-definition)
    autocmd FileType kotlin nmap <silent> gr <Plug>(coc-references)
    " autocmd VimLeavePre clojure TagbarClose
    autocmd BufRead,BufNewFile *.kt call NewKotlinFile()

    "* Insert Mode
    autocmd FileType kotlin inoremap <C-f> <Esc>:let @z=@/<CR>/\v[)"}]<CR>:let @/=@z<CR>a
    autocmd FileType kotlin inoremap <C-b> <Esc>:let @z=@/<CR>?\v[("{]<CR>:let @/=@z<CR>i
augroup END
