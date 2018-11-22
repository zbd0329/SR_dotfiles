if !exists('g:include_set_easymotion_loaded')
    let g:include_set_easymotion_loaded = 1

    " Easy motion
    "let g:EasyMotion_do_mapping  = 0 " Disable default mappings
    let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
    let g:EasyMotion_smartcase = 1
    map  <Leader>  <Plug>(easymotion-prefix)
    vmap <Leader>s <Plug>(easymotion-bd-f)
    nmap <Leader>s <Plug>(easymotion-overwin-f2)
    nmap <Leader>l <Plug>(easymotion-lineforward)
    vmap <Leader>l <Plug>(easymotion-lineforward)
    nmap <Leader>j <Plug>(easymotion-j)
    vmap <Leader>j <Plug>(easymotion-j)
    nmap <Leader>k <Plug>(easymotion-k)
    vmap <Leader>k <Plug>(easymotion-k)
    nmap <Leader>h <Plug>(easymotion-linebackward)
    vmap <Leader>h <Plug>(easymotion-linebackward)

endif