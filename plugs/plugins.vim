" Add the dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

function! DoRemote()
    UpdateRemotePlugins
endfunction

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')
  
  " Ranger integration
  call dein#add('francoiscabrol/ranger.vim')
  call dein#add('rbgrouleff/bclose.vim')
  " Fuzzy finder
  call dein#add('junegunn/fzf')
  " Language support
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  " All the Themes I like
  call dein#add('joshdick/onedark.vim')
  call dein#add('drewtempelmeyer/palenight.vim')

  call dein#add('HerringtonDarkholme/yats.vim')
  " key menu popup "
  call dein#add('liuchengxu/vim-which-key')
  " Running tests in vim "
  call dein#add('janko-m/vim-test')
  " Better Syntax Support
  call dein#add('sheerun/vim-polyglot')
  " Powerline
  call dein#add('vim-airline/vim-airline')
  call dein#add('christianchiarulli/vim-airline-themes')
  " File explorer
  call dein#add('scrooloose/NERDTree')
  " Comments "
  call dein#add('scrooloose/nerdcommenter')
  " Icons
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  " Git support
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  " Start Screen
  call dein#add('mhinz/vim-startify')
  " Tagbar
  call dein#add('majutsushi/tagbar')
  " Auto Pairs
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('christoomey/vim-tmux-navigator')
  " Sneak mode "
  call dein#add('justinmk/vim-sneak')
  ""Git
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  " BufOnly use :BufOnly to unload all or pass it a single buffer
  call dein#add('vim-scripts/BufOnly.vim')
  " Distraction free writing "
  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/limelight.vim')
  "Markdown viewer TODO Fix this stupid thing
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app & yarn install"' })
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'})
  call dein#add('Shougo/neoinclude.vim')
  "echo doc 
  call dein#add('Shougo/echodoc.vim')
  "Colorizer "
  call dein#add('norcalli/nvim-colorizer.lua')
  " Find and replace
  call dein#add('brooth/far.vim')
  
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
