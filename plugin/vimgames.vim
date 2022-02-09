if exists('g:loaded_vimgames') | finish | endif " dont load thing twice

let s:save_cpo = &cpo " save coptions
set cpo&vim " reset them to defaults
command! vimgames lua require'vimgames'.vimgames()


let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_vimgames = 1
