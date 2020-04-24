" set which key
"
" Any keymapping that involves <leader is here>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
let g:which_key_sep = '→'

" By default timeoutlen is 1000 ms
set timeoutlen=100


let g:which_key_map =  {}
"let g:which_key_default_group_name = ''
"let g:which_key_map.f = { 'name' : '+file' }
"nnoremap <silent> <leader>fs :update<CR>
"let g:which_key_map.f.s = ['update', 'save-file']

" This is a funtion to open any file with <leader>(key sequence)
fun! OpenConfigFile(file)
  if (&filetype ==? 'startify')
    execute 'e ' . a:file
  else
    execute 'tabe ' . a:file
  endif
endfun

"nnoremap <silent> <leader>in :call OpenConfigFile('~/.config/nvim/init.vim')<cr>
"nnoremap <silent> <leader>bashrc :call OpenConfigFile('~/.bashrc')<cr>
"nnoremap <silent> <leader>code :call OpenConfigFile('~/Library/Application Support/Code/User/settings.json')<cr>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'commenter' ]
let g:which_key_map['e'] = [ 'NERDTreeToggle'             , 'file-explorer' ]           
let g:which_key_map['p'] = [ 'pclose'                     , 'close-preview' ]
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['d'] = [ 'bd'                         , 'delete-buffer' ]
let g:which_key_map['s'] = [ 'w'                          , 'save' ]
let g:which_key_map['r'] = [ 'Ranger'                     , 'ranger' ]
let g:which_key_map['f'] = [ 'FZF'                        , 'fzf' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen-mode' ]
let g:which_key_map['v'] = ['<C-W>v'                      , 'split-window-right']
let g:which_key_map['h'] = ['<C-W>s'                      , 'split-window-below']
let g:which_key_map['o'] = ['only'                        , 'close-all-other-windows']
"let g:which_key_map[','] = ['vsplit $NVIMRC '             , 'open-init.vim']
"let g:which_key_map['.'] = ['source $NVIMRC '             , 'source-init.vim']
let g:which_key_map['"'] = ['viw<esc>a"<esc>bi"<esc>lel'  , 'surround']
" Surround in \""
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'e' : ['NERDTreeToggle'         , 'file-explorer']           ,
      \ 'b' : ['TagbarToggle'           , 'tagbar']                  ,
      \ 'n' : [':set nonumber!'         , 'line-numbers']            ,
      \ 'r' : [':set norelativenumber!' , 'rel-line-numbers']        ,
      \ 's' : [':let @/ = ""'           , 'remove-search-highlight'] ,
      \ 'c' : ['ColorToggle'            , 'remove-color']            ,
      \ 't' : [':6sp term://zsh'        , 'terminal']                ,
      \ }


let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : ['<Plug>(coc-codeaction-selected)'              , 'rename symbol']     ,
      \ 'r' : ['<Plug>(coc-rename)'                           , 'rename symbol']     ,
      \ 'f' : ['<Plug>(coc-fix-current)'                      , 'fix']       ,
      \ 'i' : ['ALEInfo'                                      , 'info']             ,
      \ 'h' : ['<Plug>(ale_hover)'                            , 'hover']            ,
      \ 'R' : ['LanguageClient#textDocument_rename()'         , 'rename']           ,
      \ 's' : ['LanguageClient#textDocument_documentSymbol()' , 'document-symbol']  ,
      \ 'S' : ['LanguageClient#workspace_symbol()'            , 'workspace-symbol'] ,
      \ 'g' : {
      \ 'name': '+goto',
      \ 't' : ['LanguageClient#textDocument_typeDefinition()' , 'type-definition']  ,
      \ 'i' : ['LanguageClient#textDocument_implementation()'  , 'implementation']  ,
      \ },
      \ 'p' : {
        \ 'name': '+python',
        \ 'd' : ['<Plug>(pydocstring)'  , 'python-docstring']  ,
        \ },
      \ }

let g:which_key_map.b = {
       \ 'name' : '+buffer' ,
       \ '1' : ['b1'        , 'buffer 1']        ,
       \ '2' : ['b2'        , 'buffer 2']        ,
       \ 'd' : ['bd'        , 'delete-buffer']   ,
       \ 'f' : ['bfirst'    , 'first-buffer']    ,
       \ 'l' : ['blast'     , 'last-buffer']     ,
       \ 'n' : ['bnext'     , 'next-buffer']     ,
       \ 'p' : ['bprevious' , 'previous-buffer'] ,
       \ '?' : ['Buffers'   , 'fzf-buffer']      ,
       \ 's' : ['Startify'  , 'Startify']        ,
       \ 'g' : ['Goyo'      , 'Goyo']            ,
       \ }

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Get rid of status bar when not in use
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  
""nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
""nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_use_floating_win = 0
