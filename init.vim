"/ **
"/ **  first thing first [start]
"/ **
"/ {
  set nocompatible
  set hidden          "/ Handle multiple buffers better.
                      "/ [COC] if hidden is not set, TextEdit might fail.
"}

"/ other important setting
" set shell=sh
"/
"/
"/ **
"/ **  first thing first [End]
"/ **


"/ **
"/ **  Enable undo
"/ ----------------------
"/ from https://vi.stackexchange.com/questions/6/how-can-i-use-the-undofile
  if !isdirectory($HOME."/tmp2")
    call mkdir($HOME."/tmp2", "", 0770)
  endif
  if !isdirectory($HOME."/tmp2/vim")
    call mkdir($HOME."/tmp2/vim", "", 0770)
  endif
  if !isdirectory($HOME."/tmp2/vim/undodir")
    call mkdir($HOME."/tmp2/vim/undodir", "", 0700)
  endif
  set undodir=~/tmp2/vim/undodir "/ need to create this dir
  set undofile
"/ ^^^^^^^^^^^^^^^^^^^^^
"/ **  Enable undo [END]
"/


    "/ ------------------------------------------------
    "/ Sand box debugging [start]
    "/ Uncomment the following to be user in debugging
    "/ inside a sandbox
    "/ ------------------------------------------------
    " let DIR = getcwd()
    " echom DIR
    "
    " if !filereadable(DIR.'/dot-vim/plug.vim')
    "   echom 'executing curl...'
    "   silent !curl --insecure -fLo ./dot-vim/plug.vim
    "     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    " endif
    "
    " call plug#begin(DIR.'/dot-vim/plugged')
    "/ Sand box debugging [end]

    call plug#begin('~/.vim/plugged')
        "/ Make sure you use single quotes

        Plug 'junegunn/vim-easy-align'

        Plug 'pixelastic/vim-undodir-tree'  "/ This is to get-around:
                                            "/ https://github.com/vim/vim/issues/346
                                            "/ https://stackoverflow.com/questions/63289924/vim-undofile-does-not-work-when-file-is-too-long

        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'

        Plug 'tpope/vim-surround'

        Plug 'tomtom/tcomment_vim'

        Plug 'brooth/far.vim'
            "/ Find and replace text through multiple files.

        Plug 'https://github.com/cakebaker/scss-syntax.vim'
        Plug 'https://github.com/hail2u/vim-css3-syntax'

        Plug 'vim-scripts/c.vim'
        Plug 'https://github.com/vim-scripts/applescript.vim'

        Plug 'Chiel92/vim-autoformat'

        " Plug 'cjrh/vim-conda'

        Plug 'https://github.com/vim-syntastic/syntastic'
        Plug 'mtscout6/syntastic-local-eslint.vim'

        Plug 'https://github.com/juvenn/mustache.vim'

        Plug 'https://github.com/keith/swift.vim'
        Plug 'https://github.com/TheCodedSelf/syntastic-swift'

        Plug 'https://github.com/othree/html5.vim'
        Plug 'https://github.com/digitaltoad/vim-pug'

        "/ vim-coc
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        Plug 'https://github.com/Shougo/vimproc.vim', {'do' : 'make'}
        Plug 'https://github.com/Shougo/vimshell.vim'

        "/ ***
        "/ *** Shougo/denite.nvim
        "/ ***
        Plug 'https://github.com/roxma/nvim-yarp'          "/required for denite.nvim
        Plug 'https://github.com/roxma/vim-hug-neovim-rpc' "/required for denite.nvim
        Plug 'https://github.com/Shougo/denite.nvim'

        "/ ***
        "/ *** Yggdroot/LeaderF
        "/ ***
        Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

        " Plug 'Yggdroot/indentLine'
        "/ Yggdroot/indentLine mess up json and markdown by concealing characater
        "/ https://vi.stackexchange.com/questions/12520/markdown-in-neovim-which-plugin-sets-conceallevel-2/12521

        Plug 'https://github.com/posva/vim-vue'

        Plug 'https://github.com/Konfekt/FastFold'
        Plug 'https://github.com/tmhedberg/SimpylFold'

        " Plug 'https://github.com/jremmen/vim-ripgrep'


        "/ ***
        "/ *** ts and tsx syntax
        "/ ***
        "/ https://github.com/neoclide/coc-tsserver/issues/8#issuecomment-450559391
        "/
            " Plug 'https://github.com/ianks/vim-tsx'
            " Plug 'leafgarland/typescript-vim'
        Plug 'HerringtonDarkholme/yats.vim'
        " Plug 'peitalin/vim-jsx-typescript'
          "/ the above is setting .jsx as typescript.tsx so not using
          "/ https://github.com/peitalin/vim-jsx-typescript/issues/16


        "/ ***
        "/ *** js and jsx syntax
        "/ ***
            " Plug 'pangloss/vim-javascript'
            " Plug 'mxw/vim-jsx'
            " Plug 'https://github.com/othree/yajs.vim'
            " Plug 'https://github.com/othree/es.next.syntax.vim'
            " Plug 'neoclide/vim-jsx-improve'
        Plug 'pangloss/vim-javascript'
        Plug 'maxmellon/vim-jsx-pretty'


        "/ Flow syntax
        Plug 'https://github.com/flowtype/vim-flow'

        "/ Theme
        "Plug 'https://github.com/morhetz/gruvbox'
        "Plug 'https://github.com/ApolloTang/apollotang-light'
        "Plug 'https://github.com/ApolloTang/vim-color-apollotang'
        "Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
          "/ scheenshot for tempus themes:
          "/   https://gitlab.com/protesilaos/tempus-themes#screenshots-sort-a-z

        Plug 'ApolloTang/theme-vim--snow'
        Plug 'mcchrish/zenbones.nvim'

        Plug 'https://github.com/editorconfig/editorconfig-vim'

        Plug 'https://github.com/mattn/emmet-vim/'

        Plug 'https://github.com/moll/vim-bbye'

        Plug 'https://github.com/rizzatti/dash.vim'

        Plug 'https://github.com/tpope/vim-fugitive'
        Plug 'https://github.com/tpope/vim-unimpaired'
        Plug 'https://github.com/airblade/vim-gitgutter'

        Plug 'https://github.com/honza/vim-snippets'
        Plug 'https://github.com/mhinz/vim-startify'
        Plug 'https://github.com/mhinz/vim-grepper'

        Plug 'hecal3/vim-leader-guide'

        Plug 'prabirshrestha/async.vim'         "/ required by tmux-complete
        Plug 'prabirshrestha/asyncomplete.vim'  "/ required by tmux-complete
        Plug 'wellle/tmux-complete.vim'

        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
          "/ Start the preview :MarkdownPreview
          "/ Stop the preview" :MarkdownPreviewStop

        Plug 'mbbill/undotree'

        Plug 'dhruvasagar/vim-zoom'

        Plug 'vitalk/vim-shebang'

        Plug 'alvan/vim-closetag'

        Plug 'heavenshell/vim-jsdoc', {
          \ 'for': ['javascript', 'javascript.jsx','typescript'],
          \ 'do': 'make install'
        \}

        Plug 'metakirby5/codi.vim'

        Plug 'neoclide/jsonc.vim'
    call plug#end()


syntax enable  "/ Turn on syntax highlighting.


"/ **
"/ ** Enabling colorscheme start
"/ **
"/ Colors and fonts {
  " let g:solarized_termcolors=256
  " set t_Co=256
  " set background=dark
  " colorscheme grb256
  " colorscheme koehler
  " colorscheme apollotang
  " colorscheme apollotang-light
  " set transparency=15

  if has("gui_running")
    if has("gui_gtk2")
      " colorscheme slate
      " colorscheme apollotang
      " colorscheme apollotang-light
      " colorscheme tempus_day

      set background=light
      colorscheme snow

      set guifont=Inconsolata\ 9
    elseif has("gui_macvim")
      " echo 'is macvim'
      " colorscheme apollotang-light
      " colorscheme tempus_day

      set background=light
      colorscheme snow

      set guifont=Inconsolata:h14
      " set guifont=Menlo\ Regular:h14
      " set guifont=Andale\ Mono:h14
      " set guifont=Courier\ New\ Regular:h11
      " set guifont=PT\ Mono:h11
      " set guifont=Osaka-Mono:h14
      " set guifont=Monaco:h12
      " set guifont=Source\ Code\ Pro\ Light:h12
      " set guifont=Source\ Code\ Pro\ ExtraLight:h12
      " colorscheme apollotang
      " set guifont=Consolas:h12
      "
      "/ Popup menu highlight:
      "/ https://vi.stackexchange.com/questions/12664/is-there-any-way-to-change-the-popup-menu-color
      hi Pmenu ctermbg=gray guibg=#dfe7fb
    elseif has("gui_win32")
      set guifont=Consolas:h9:cANSI
    endif
  endif
"/ ** Enabling colorscheme END



"/ **
"/ **
"/ ** [plugconfig coc]
"/ **
"/ **
"/ ** ---------------------------------
  "/ Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
  "/ delays and poor user experience.
  set updatetime=300

  "/ don't give |ins-completion-menu| messages.
  "set shortmess+=c
  "/ This setting is no longer present on neoclide/coc.nvim README. So
  "/ I am not sure if 'shortmess+=c' is still required, turn off for now.

  "/ Always show the signcolumn, otherwise it would shift the text each time
  "/ diagnostics appear/become resolved.
  "/ Recently vim can merge signcolumn and number column into one
  "/ but I don't want to merge b/c I want to see both signcolum and number
  set signcolumn=yes  "/ alway draw the signcolumn

  "/ Use <tab> and <S-tab> to navigate completion list:
  "/ NOTE:
  "/   Use command ':verbose imap <tab>' to make sure tab is not re-mapped by
  "/   other plugin otherwise the following will not work.
  inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>CheckBackSpace() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>"

  "/ Make <CR> to accept selected completion item or notify coc.nvim to format
  "/ <C-g>u breaks current undo, please make your own choice.
  "/ SEE:
  "/  https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-cr-to-confirm-completion
  "/ NOTE:
  "/  Use command ':verbose imap <CR>' to make sure character return is not re-mapped by other plugin.
  inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

  function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  "/ Use <c-space> to trigger completion. This is same as vscode's Ctrl+Space.
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  elseif has("gui_macvim")
    inoremap <silent><expr> <c-space> coc#refresh()
    "/ My alternative mapping:
    inoremap <silent><expr> <C-o><space> coc#refresh()
    "/ (I can't remember why I the above alternate mapping; I will consider remove it in the future)
  else
    "/ Vim in terminal pressing 'Ctrl+space' is triggering  <c-@> instead of <c-space>
    "/ see: https://github.com/neoclide/coc.nvim/issues/2176
    inoremap <silent><expr> <c-@> coc#refresh()
  endif


  "/ Use `[g` and `]g` to navigate diagnostics
  "/ Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)


  "/ ##
  "/ ## Trigger function signature help like vscode's Cmd+Shift+Space
  "/ ##
  "/ To do this this, place cursor in the function parenthesis, switch to insert
  "/ mode and press <c-p> ( see: https://github.com/neoclide/coc.nvim/issues/2202#issuecomment-662969193 )
  "inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp') <cr>
  "/
  "/ The mapping above is commented out b/c it overwritten dropdown-navigation-up in completion,
  "/ ( see: https://medium.com/usevim/vim-101-completion-compendium-97b4ebc3a45a )
  "/ The folloing is a better mapping (from: https://github.com/neoclide/coc.nvim/issues/2656#issuecomment-845903417 )
  inoremap <silent> <space>s <C-r>=CocActionAsync('showSignatureHelp')<CR>


  " Use K to show documentation in preview window.
  nnoremap <silent> K :call ShowDocumentation()<CR>

  function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('doHover')
    else
      call feedkeys('K', 'in')
    endif
  endfunction

  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

  "/ Apollo's custom
  function! CocCustomCommand_renameCurrentSymbol()
    :execute "normal \<Plug>(coc-rename)"
  endfunction
  command! GGCocRenameCurrentSymbol call CocCustomCommand_renameCurrentSymbol()

  "/ [Coc configuration refactor pause at this line 2021.02.15]

  "/ Open refactor window for refactor of current symbol
  nmap <space>crf <Plug>(coc-refactor)
    "/ The following does not work it needs to be wrapped into a function
    "/   command! GGCrefactor :execute "normal \<Plug>(coc-rename)"
  function! CocCustomCommand_refactor()
    :execute "normal \<Plug>(coc-refactor)"
  endfunction
  command! GGCocRefactor call CocCustomCommand_refactor()

  "/ Remap for format selected region
  " xmap <leader>f  <Plug>(coc-format-selected)
  " nmap <leader>f  <Plug>(coc-format-selected)
  "/ in the above, not sure why my <leader> use <space> for now
  xmap <space>f  <Plug>(coc-format-selected)
  nmap <space>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  "/ Applying codeAction to the selected region.
  "/ Example: `<learder>aap` for current paragraph
  " xmap <leader>a  <Plug>(coc-codeaction-selected)
  " nmap <leader>a  <Plug>(coc-codeaction-selected)
  "/ TODO
  "/   Cannot get codeaction-selected to work, no avail after using <space>
  xmap <space>a  <Plug>(coc-codeaction-selected)
  nmap <space>a  <Plug>(coc-codeaction-selected)

  "/ Remap keys for applying codeAction to the current buffer.
  "nmap <leader>ac  <Plug>(coc-codeaction)  "/ TODO <leader> not working, use <space>
  nmap <space>ac  <Plug>(coc-codeaction)
  "/ Apply AutoFix to problem on the current line.
  "nmap <leader>qf  <Plug>(coc-fix-current) "/ TODO <leader> not working, use <space>
  nmap <space>qf  <Plug>(coc-fix-current)

  "/ Run the Code Lens action on the current line. (Only works on neovim by now.)
  "nmap <leader>cl  <Plug>(coc-codelens-action) "/ TODO <leader> not working, use <space>
  nmap <space>cl  <Plug>(coc-codelens-action)

  "/ Use CTRL-S for selections ranges.
  "/ Requires 'textDocument/selectionRange' support of language server.
  nmap <silent> <C-s> <Plug>(coc-range-select)
  xmap <silent> <C-s> <Plug>(coc-range-select)

  "/ Format current buffer
  "/ This command was 'Format' in official README
  command! -nargs=0 GGCocFormatCurrentBuffer :call CocAction('format')

  "/ Fold current buffer
  command! -nargs=? GGCocFoldCurrentBuffer :call CocAction('fold', <f-args>)

  "/ Organize import of current buffer
  command! -nargs=0 GGCocOrganizeImport :call CocAction('runCommand', 'editor.action.organizeImport')
  "/ see: https://community.vscodetips.com/tonyhicks20/automatically-organize-imports-346d

  " Add (Neo)Vim's native statusline support.
  " NOTE: Please see `:h coc-status` for integrations with external plugins that
  " provide custom statusline: lightline.vim, vim-airline.
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  " Using CocList
  " Show all diagnostics
  nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions
  nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
  " Show commands
  nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document
  nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
  " Search workspace symbols
  nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list
  nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

  function! CocCustomCommand_help()
    :echom "-------------- GGhelpCoc"
    :echom "GGcocRenameCurrentSymbol: <leader>rn <Plug>(coc-rename)"
    :echom "nmap <silent> gd <Plug>(coc-definition)"
    :echom "nmap <silent> gy <Plug>(coc-type-definition)"
    :echom "nmap <silent> gi <Plug>(coc-implementation)"
    :echom "nmap <silent> gr <Plug>(coc-references)"
    :echom "Format selected               : xmap <leader>f  <Plug>(coc-format-selected)"
    :echom "Show all diagnostics          : nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>"
    :echom "Find symbol in this document  : nnoremap <silent> <space>o  :<C-u>CocList outline<cr>"
    :echom "Search workspace symbols      : nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>"
  endfunction
  command! GGhelpCoc call CocCustomCommand_help()

  "/ Colors in completion dropdown:
  "/   from: https://github.com/neoclide/coc.nvim/pull/3862
  hi CocSearch ctermfg=12 guifg=#f80409    "/ fg for matched highlight
  hi CocMenuSel ctermbg=109 guibg=#ffe4bd  "/ bg of current selection

  "/ Coc Style
  hi CocErrorHighlight       cterm=underline gui=undercurl guisp=red     ctermfg=red
  hi CocWarningHighlight     cterm=underline gui=undercurl guisp=orange  ctermfg=3
  hi CocInfoHighlight        cterm=underline gui=undercurl guisp=#bbbff5 ctermfg=blue
  hi CocHintHighlight        cterm=underline gui=undercurl guisp=green   ctermfg=green

  hi CocErrorsign            ctermfg=red   guifg=red
  hi CocWarningsign          ctermfg=3     guifg=orange
  hi CocInfoSign             ctermfg=blue  guifg=#2300b1
  hi CocHintSign             ctermfg=darkcyan guifg=darkcyan
  "/ More highlight set in plugin/coc.vim


"/ ** ---------------------------------
"/ ** [plugconfig-end coc END]




"/ **
"/ **
"/ ** [plugconfig-start coc-yank]
"/ **
"/ **
"/ ** ---------------------------------

  "/ https://github.com/neoclide/coc-yank
  nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

"/ ** ---------------------------------
"/ ** [plugconfig-end coc-yank ]





"/ **
"/ **
"/ ** [plugconfig-start coc-snippets]
"/ **
"/ **
"/ ** ---------------------------------

  "/ Ultisnips' snippets are saved under folder:
  "/
  "/   ~/1/1-sy/dot-config/coc/ultisnips/
  "/
  "/ URL to github is:
  "/
  "/   https://github.com/ApolloTang/ultisnips
  "/

  "/ Bellow, I think it is over-writing the '<tab> and <S-tab>'
  "/ completion list's navigation, so I remap it to <F4>
  "/
  " inoremap <silent><expr> <TAB>
    inoremap <silent><expr> <F4>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ?
      \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

    let g:coc_snippet_next = '<F4>'

  "/------------------------------------------
  "/ ** the following configuration still wip

  " trigger snippet expand.
  " imap <C-l> <Plug>(coc-snippets-expand)
  imap <C-9> <Plug>(coc-snippets-expand)

  " select text for visual placeholder of snippet.
  " vmap <C-j> <Plug>(coc-snippets-select)
  vmap <C-7> <Plug>(coc-snippets-select)

  " jump to next placeholder, it's default of coc.nvim
  " let g:coc_snippet_next = '<c-j>'
  let g:coc_snippet_next = '<c-7>'

  " jump to previous placeholder, it's default of coc.nvim
  " let g:coc_snippet_prev = '<c-k>'
  let g:coc_snippet_prev = '<c-8>'

  " both expand and jump (make expand higher priority.)
  " imap <C-j> <Plug>(coc-snippets-expand-jump)
  imap <C-7> <Plug>(coc-snippets-expand-jump)
"/ ** ---------------------------------
"/ ** [plugconfig coc-snippets END]



"/ **
"/ **
"/ ** [plugconfig coc-jest]
"/ **
"/ **
"/ ** ---------------------------------
  " Run jest for current project
  command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

  " Run jest for current file
  command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

  " Run jest for current test
  nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

  " Init jest in current cwd, require global jest command exists
  command! JestInit :call CocAction('runCommand', 'jest.init')
"/ ** ---------------------------------
"/ ** [plugconfig coc-jest END]




"/ **
"/ **
"/ ** [plugconfig vim-flow]
"/ **
"/ **
"/ ** ---------------------------------
  "/ This is to fix this bug: https://github.com/flowtype/vim-flow/issues/38#issuecomment-266044794
    let g:flow#autoclose = 1
    "/ If g:flow#autoclose is set to 1, the quickfix window will not be opened
    "/ when there are no errors, and will be automatically closed when previous errors are cleared.
"/ ** ---------------------------------
"/ ** [plugconfig vim-flow END]



"/ **
"/ **
"/ ** [plugconfig vim-grepper]
"/ **
"/ **
"/ ** ---------------------------------
  "/ for browsing the input history
  cnoremap <c-n> <down>
  cnoremap <c-p> <up>

  "/ map normal and visual mode to  Grepper operator
  nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)

  nmap <space>g :Grepper -tool rg<cr>

  let g:grepper = {}
  let g:grepper.tools = ['git', 'rg', 'grep']
  let g:grepper.dir = 'repo,cwd'
"/ ** ---------------------------------
"/ ** [plugconfig vim-grepper END]


"/ **
"/ **
"/ ** [plugconfig vim-gitgutter]
"/ ** airblade/vim-gitgutter configuration start
"/ **
"/ **
"/ ** ---------------------------------
"/  {
  "/ change ]c to ]h because it is conflict with vim-coc
  nmap ]h <Plug>GitGutterNextHunk
  nmap [h <Plug>GitGutterPrevHunk
"/ ** ---------------------------------
"/ ** [plugconfig vim-gitgutter END]



"/ **
"/ **
"/ ** [plugconfig vim-easy-align]
"/ ** junegunn/vim-easy-align configuration start
"/ **
"/ **
"/ ** ---------------------------------
    "/ Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    "/ Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
"/ ** ---------------------------------
"/ ** [plugconfig vim-easy-align END]



"/ **
"/ **
"/ ** [plugconfig vim-jsx]
"/ ** junegunn/vim-jsx configuration start
"/ **
"/ **
"/ ** ---------------------------------
    "/ treat .js as .jsx
    let g:jsx_ext_required = 0
"/ ** ---------------------------------
"/ ** [plugconfig vim-jsx END]


"/ **
"/ **
"/ ** [plugconfig swift.vim]
"/ ** keith/swift.vim
"/ **
"/ **
"/ ** ---------------------------------
  let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
"/ ** ---------------------------------
"/ ** [plugconfig swift.vim END]



"/ **
"/ **
"/ ** [plugconfig denite]
"/ ** Shougo/denite.nvim configuration
"/ **
"/ **
"/ ** ---------------------------------
  "/ Ref: https://github.com/ctaylo21/jarvis/blob/master/config/nvim/init.vim
  "/
  "/ === Denite setup ==="
  "/ Use ripgrep for searching current directory for files
  "/ By default, ripgrep will respect rules in .gitignore
  "/   --files: Print each file that would be searched (but don't search)
  "/   --glob:  Include or exclues files for searching that match the given glob
  "/            (aka ignore .git files)
  "/

  call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

  "/ Use ripgrep in place of "grep"
  call denite#custom#var('grep', 'command', ['rg'])

  "/ Custom options for ripgrep
  "/   --vimgrep:  Show results with every match on it's own line
  "/   --hidden:   Search hidden directories and files
  "/   --heading:  Show the file name above clusters of matches from each file
  "/   --S:        Search case insensitively if the pattern is all lowercase
  call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

  "/ Recommended defaults for ripgrep via Denite docs
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  "/ Remove date from buffer list
  call denite#custom#var('buffer', 'date_format', '')

  "/ Open file commands
  call denite#custom#map('insert,normal', "<C-t>", '<denite:do_action:tabopen>')
  call denite#custom#map('insert,normal', "<C-v>", '<denite:do_action:vsplit>')
  call denite#custom#map('insert,normal', "<C-h>", '<denite:do_action:split>')

  "/ Custom options for Denite
  "/   auto_resize             - Auto resize the Denite window height automatically.
  "/   prompt                  - Customize denite prompt
  "/   direction               - Specify Denite window direction as directly below current pane
  "/   winminheight            - Specify min height for Denite window
  "/   highlight_mode_insert   - Specify h1-CursorLine in insert mode
  "/   prompt_highlight        - Specify color of prompt
  "/   highlight_matched_char  - Matched characters highlight
  "/   highlight_matched_range - matched range highlight
  let s:denite_options = {'default' : {
  \ 'auto_resize': 1,
  \ 'prompt': 'λ:',
  \ 'direction': 'rightbelow',
  \ 'winminheight': '10',
  \ 'highlight_mode_insert': 'Visual',
  \ 'highlight_mode_normal': 'Visual',
  \ 'prompt_highlight': 'Function',
  \ 'highlight_matched_char': 'Function',
  \ 'highlight_matched_range': 'Normal'
  \ }}

  "/ Loop through denite options and enable them
  function! s:profile(opts) abort
    for l:fname in keys(a:opts)
      for l:dopt in keys(a:opts[l:fname])
        call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
      endfor
    endfor
  endfunction
  call s:profile(s:denite_options)

  "/ Denite-mappings
  "/ ---------------

    "/  <space>db  - Browser currently open buffers
    "/  <space>df  - Browse list of files in current directory
    "/  <space>dg  - Search current directory for occurences of given term and
    "/               close window if no results
    "/  <space>dc  - Search current directory for occurences of word under cursor
    nmap <space>db :Denite buffer -split=floating -winrow=1<CR>
    nmap <space>df :Denite file/rec -split=floating -winrow=1<CR>
    " nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR> "/ not sure what ':.' does
    nnoremap <space>dg :<C-u>Denite grep -no-empty<CR>
    " nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR> "/ not sure what ':.' does
    nnoremap <space>dc :<C-u>DeniteCursorWord grep<CR>

    autocmd FileType denite call s:denite_my_settings()
    function! s:denite_my_settings() abort
      nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
      nnoremap <silent><buffer><expr> d denite#do_map('do_action', 'delete')
      nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
      nnoremap <silent><buffer><expr> q denite#do_map('quit')
      nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
      nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
    endfunction
"/ ** ---------------------------------
"/ ** [plugconfig denite END]



"/ **
"/ **
"/ ** [plugconfig fastfold]
"/ **
"/ **
"/ ** ---------------------------------
  let g:fastfold_savehook = 0 " update folds manually
  let g:fastfold_fold_command_suffixes = [] " use standard folding keystroke

  let g:markdown_folding = 1
  let g:tex_fold_enabled = 1
  let g:vimsyn_folding = 'af'
  let g:xml_syntax_folding = 1
  let g:javaScript_fold = 1
  let g:sh_fold_enabled= 7
  let g:ruby_fold = 1
  let g:perl_fold = 1
  let g:perl_fold_blocks = 1
  let g:r_syntax_folding = 1
  let g:rust_fold = 1
  let g:php_folding = 1
"/ ** ---------------------------------
"/ ** [plugconfig fastfold END]



"/ **
"/ **
"/ ** [plugconfig simpylfold]
"/ ** tmhedberg/SimpylFold
"/ **
"/ **
"/ ** ---------------------------------
  let g:SimpylFold_docstring_preview = 1 " 0=disable; 1=enable
"/ ** ---------------------------------
"/ ** [plugconfig simpylfold END]



"/ **
"/ **
"/ ** [plugconfig vim-jsx-pretty]
"/ ** MaxMEllon/vim-jsx-pretty
"/ **
"/ **
"/ ** ---------------------------------
  let g:vim_jsx_pretty_enable_jsx_highlight = 1 " default 1
"/ ** ---------------------------------
"/ ** [plugconfig vim-jsx-pretty END]



"/ **
"/ **
"/ ** [plugconfig LeaderF]
"/ ** Yggdroot/LeaderF
"/ **
"/ **
"/ ** ---------------------------------
"
  "/
  "/ default was <leader>f, and is confict w coc format
  "/ so remap to <leader>i
  let g:Lf_ShortcutF = '<leader>i'

  nmap <space>p :LeaderfFile<cr>
  nmap <space>b :LeaderfBuffer<cr>

  function! LeaderFCustomCommand_help()
    :echom "----------- GGhelpLeader"
    :echom "LF_ShortcutF is <leader>i"
    :echom "<space>p : LeaderfFile"
    :echom "<space>b : LeaderfBuffer"

    :echom "<C-P> : preview the result"
    :echom "<C-V> : paste from clipboard"
    :echom "<C-J>, <C-K> : navigate the result list"
    :echom "<C-X> : open in horizontal split window"
    :echom "<C-]> : open in vertical split window"
    :echom "<F5>  : refresh the cache"
    :echom "<C-S> : select multiple files"
    :echom "<C-L> : clear all selections"
    :echom "<Tab> : switch to normal mode"
  endfunction
  command! GGhelpLeader call LeaderFCustomCommand_help()

  "/ fix bad contrast on cursor line highlight in search pane
  "/ https://github.com/Yggdroot/LeaderF/issues/402#issuecomment-636458277
  hi link Lf_hl_cursorline None

"/ ** ---------------------------------
"/ ** [plugconfig LeaderF END]



"/ **
"/ **
"/ ** [plugconfig tmux-complete]
"/ ** wellle/tmux-complete.vim
"/ **
"/ **
"/ ** ---------------------------------
  let g:tmuxcomplete#asyncomplete_source_options = {
        \ 'name'     :'tmuxcomplete',
        \ 'whitelist': ['*'],
        \ 'config'   : {
        \     'splitmode'      :'words',
        \     'filter_prefix'  : 1,
        \     'show_incomplete': 1,
        \     'sort_candidates': 0,
        \     'scrollback'     : 0,
        \     'truncate'       : 0
        \   }
        \ }
"/ ** ---------------------------------
"/ ** [plugconfig tmux-complete END]



"/ **
"/ **
"/ ** [coc-plugin coc-prettier]
"/ **
"/ **
"/ ** ---------------------------------

  "/ Use :Prettier to format current buffer (does not save).
  command! -nargs=0 GGFF :CocCommand prettier.formatFile

  "/ Run prettier and then save the buffer.
  function! RunPrettier()
    :CocCommand prettier.formatFile
    :w
    echo 'Run prettier and save'
  endfunction
  command! GGFFs call RunPrettier()

  "/ <leader>f for range format.
  vmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  function! CocPlugin_prettier()
    :echom "Format selected range"
    :echom "---------------------"
    :echom "vmap <leader>f  <Plug>(coc-format-selected)"
    :echom "nmap <leader>f  <Plug>(coc-format-selected)"
    :echom "---------------------"
    :echom "Format buffer (do not save): GGFF"
    :echom "Format buffer (save): GGFFs"
  endfunction
  command! GGhelpCocPluginPrettier call CocPlugin_prettier()

"/ ** ---------------------------------
"/ ** [coc-plugin coc-prettier END]



"/ **
"/ **
"/ ** [Xuyuanp/nerdtree-git-plugin][start]
"/ **
"/ **
"/ ** ---------------------------------
  let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }
  "/ How to show ignored status (set to 1)?
  "/ but a heavy feature may cost much more time, so set to 0 (off) for now
  let g:NERDTreeGitStatusShowIgnored = 0
"/ ** ---------------------------------
"/ ** [Xuyuanp/nerdtree-git-plugin][END]



"/ **
"/ **
"/ ** [alvan/vim-closetag][start]
"/ **
"/ **
"/ ** ---------------------------------
  "/
  "/ See: https://www.youtube.com/watch?v=NnjkZYKzPds
  "/
  " filenames like *.xml, *.html, *.xhtml, ...
  " These are the file extensions where this plugin is enabled.
  "
  let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

  " filenames like *.xml, *.xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  "
  let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js,*.tsx'

  " filetypes like xml, html, xhtml, ...
  " These are the file types where this plugin is enabled.
  "
  let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx'

  " filetypes like xml, xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  "
  let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,tsx'

  " integer value [0|1]
  " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
  "
  let g:closetag_emptyTags_caseSensitive = 1

  " dict
  " Disables auto-close if not in a "valid" region (based on filetype)
  "
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ 'typescriptreact': 'jsxRegion,tsxRegion',
      \ 'javascriptreact': 'jsxRegion',
      \ }

  " Shortcut for closing tags, default is '>'
  "
  let g:closetag_shortcut = '>'

  " Add > at current position without closing the current tag, default is ''
  "
  let g:closetag_close_shortcut = '<leader>>'
"/ ** ---------------------------------
"/ ** [alvan/vim-closetag][END]


" Environment {
    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
    " }

    " Basics {
        if !WINDOWS()
            set shell=/bin/sh
        endif
        " set shell=bash
        "/ previously use use the above line, not sure what window
    " }

    " Windows Compatible {
        "/ On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        "/ across (heterogeneous) systems easier.
        if WINDOWS()
            set winaltkeys=yes
            "/ set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }

    "/ For ssh session
    "set term=cons25
    "/ The above fix displaying A B C D on remote shell on pressing arrow key
    "/ http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shel
" }


"/ Python Setting {
  let g:python3_host_prog='~/1/1-sy/configurations/nvimrc/python-for-nvim/.venv/bin/python'
"/ }

"/ Essential Customization { ---------------------------------------------
  noremap <c-q> :q<CR>

  "/ Select next previous item in quickfix window
  "/ https://stackoverflow.com/a/29287066/3136861
  map <C-n> :cn<CR>
  map <C-p> :cp<CR>
"/}

" Setting to sort { ------------------------------------------------------
    let mapleader=","
    let maplocalleader="\\"                 "\ leader that targat specific file type

    " inoremap <leader><leader> <Esc>hhhh     "\ back to normal mode; the 4h (hhhh) fix cusor jump around
    inoremap ,, <Esc>l
    vnoremap ,, <Esc>

    filetype plugin indent on               " Turn on file type detection.

    runtime macros/matchit.vim              " Load the matchit plugin.

    set showcmd                             " Display incomplete commands.
    set showmode                            " Display the mode you're in.

    set backspace=indent,eol,start          " Intuitive backspacing.
    "set whichwrap+=<,>,h,l                 " what is this?

    set history=1000                        " Rememember more commands and search history
    set wildmenu                            " Enhanced command line completion.
    set wildmode=list:longest               " Complete files like a shell.


    set number                              " Show line numbers.
    set ruler                               " Show cursor position.
    set relativenumber                      " use relative number

    " set scrolloff=3                       " Show 3 lines of context around the cursor.
    set scrolloff=0                         " Show 0 lines of context around the cursor.

    set title                               " Set the terminal's title

    set autoread                            " auto read when a file is changed from outside

    "/ [COC] Some servers have issues with backup files
    "/       and required to set nobackup and nowritebackup
    "/       see https://github.com/neoclide/coc.nvim/issues/649
    "/ note: I have set both nobackup and nowritebackup before COC
      set nobackup
      set nowritebackup

    set noswapfile                          " no swap files
    "set directory=$HOME/.vim/tmp//,.       " Keep swap files in one location


    set nocursorline                        " do not show cursor line
    set cmdheight=2
    set switchbuf=useopen
    "set numberwidth=5
    set showtabline=2
    "set winwidth=150                       " do not set width, if set window will size it self
    set winheight=6
    set winminheight=5

    "/ Display trailing white= spaces
    set encoding=utf-8
    set list
    set listchars=
      \tab:·\ , "/ note there is a space before comma
      \trail:·,
      " \eol:¬


    "\ ---------------
    "\  Status line
    "\ ---------------

    set laststatus=2                        " Show the status line all the time

    function! WindowNumber()
        "\ Get number number.
        "\ http://stackoverflow.com/questions/6403716/shortcut-for-moving-between-vim-windows
        let str=tabpagewinnr(tabpagenr())
        return str
    endfunction

    "\ Status information at bottom of screen
    "\ Ref: https://stackoverflow.com/questions/4390011/how-do-you-write-text-on-the-status-line-with-the-filename-row-and-col-number-w
    "\
    " set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
    set statusline=%n\|%{WindowNumber()}\|%<%.99f\ %=%10(%H%W%M%R\|%p%%\|%l\|%c\|%v\%)

    "\ ---------------
    "\  Status color
    "\ ---------------
    "\ Status line color based on mode
    "\ http://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
    "\ http://vimdoc.sourceforge.net/htmldoc/syntax.html#:highlight
    "\ http://vim.wikia.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode

    " if version >= 700
    "   au InsertEnter * hi StatusLine cterm=bold,reverse ctermbg=2 ctermfg=15 gui=reverse guifg=gray50 guibg=cyan
    "   au InsertLeave * hi StatusLine cterm=bold,reverse ctermbg=0 ctermfg=15 gui=reverse guifg=gray50 guibg=black
    " endif

    function! InsertStatuslineColor(mode)
      if a:mode == 'i'
        hi statusline guibg=black ctermfg=11 guifg=gold ctermbg=0
      elseif a:mode == 'r'
        hi statusline guibg=white ctermfg=9 guifg=sienna ctermbg=0
      else
        hi statusline guibg=red ctermfg=1 guifg=red ctermbg=0
      endif
    endfunction

    if version >= 700
      au InsertEnter * call InsertStatuslineColor(v:insertmode)
      au InsertChange * call InsertStatuslineColor(v:insertmode)
      " au InsertLeave * hi statusline guibg=white ctermfg=8 guifg=gray50 ctermbg=15
      " au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15
      au InsertLeave * hi StatusLine cterm=reverse ctermbg=0 ctermfg=14 guifg=darkCyan guibg=white
    endif

    " default the statusline when entering Vim, work on terminal vim but it has no effect on macvim
    hi statusline guibg=white ctermfg=14 guifg=darkCyan ctermbg=0


    "\ ---------------
    "\  Sound
    "\ ---------------
    set noerrorbells
    set novisualbell                   " No flashing
    set tm=500
    "/ disable bell in mac. http://stackoverflow.com/questions/16047146/disable-bell-in-macvim
    autocmd! GUIEnter * set vb t_vb=
    set belloff=all "/ https://vim.fandom.com/wiki/Disable_beeping


    "/ rainbow:  https://github.com/luochen1990/rainbow
    "let g:rainbow_active = 0 "0 if you want to enable it later via :RainbowToggle
" }

"/ ##
"/ ## Search Settings
"/ ##
"/ ## See the follwoing on Search commands and patterns:
"/ ##   http://vimdoc.sourceforge.net/htmldoc/usr_27.html
"/ ##
  set incsearch    "/ Highlight matches as you type.
  set hlsearch     "/ Highlight matches.
  set ignorecase   "/ Case-insensitive searching.
  set smartcase    "/ But case-sensitive if expression contains a capital letter.
  set shortmess-=S "/ Show search count message when searching, e.g.'[1/5]';
                   "/   ( see: vi.stackexchange.com/questions/15944/how-to-display-in-the-statusline-the-number-of-matches-from-a-search ).
  set nowrapscan   "/ Turn off search wrapping.
  set shortmess-=s "/ Show the symbol 'W' before search count when search hit BOTTOM/TOP (if 'set wrapscan' is used).





" Indentation setting { --------------------------------------------------
    "set noexpandtab                  " do not use space as tabs
    set expandtab                    " use space as tabs

    set tabstop=2                    " Global tab width.
    set shiftwidth=2                 " And again, related.
    set softtabstop=2

    "/ The following snippet of vimscript allows you to assign
    "/ the same value to tabstop, softtabstop and shiftwidth
    "/ simultaneously.
    command! -nargs=* Stab call Stab()
    function! Stab()
        let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
        if l:tabstop > 0
            let &l:sts = l:tabstop
            let &l:ts = l:tabstop
            let &l:sw = l:tabstop
        endif
        call SummarizeTabs()
    endfunction

    function! SummarizeTabs()
        try
            echohl ModeMsg
            echon 'tabstop='.&l:ts
            echon ' shiftwidth='.&l:sw
            echon ' softtabstop='.&l:sts
            if &l:et
                echon ' expandtab'
            else
                echon ' noexpandtab'
            endif
        finally
            echohl None
        endtry
    endfunction
    "/ To invoke Stab(), go into normal mode (by pressing
    "/ escape) then run:
    "/      :Stab
    "/ Then hit enter. You will see this:
    "/      set tabstop = softtabstop = shiftwidth =
    "/ Enter the size that you want to assign to those settings
    "/ and hit enter.  A summary line then shows the value of
    "/ each setting, as well as showing whether or not expandtab
    "/ is enabled. If you hit enter without providing a value
    "/ then the tab settings are not affected.
    "/
    "/ ref: http://vimcasts.org/episodes/tabs-and-spaces/

    "/ Indentation short cut:
    vmap << <gv
    vmap >> >gv
" }

" JSHint setting {
    "/ https://github.com/Shutnik/jshint2.vim

    " Plateform pattern {
        "   if !WINDOWS()
        "       "echom 'Runtime envrionment: Not windows'
        "   endif
    "   if WINDOWS()
    "       echom 'Runtime envrionment: Windows'
    "       let jshint2_command = '~/path/to/node_mobules/.bin/jshint'
    "   endif
        "   if OSX()
        "       "echom 'Runtime envrionment: OSX'
        "   endif
        "   if LINUX()
        "       "echom 'Runtime envrionment: Linux'
        "   endif
    " }

    " jshint validation
    nnoremap <silent><F1> :JSHint<CR>
    inoremap <silent><F1> <C-O>:JSHint<CR>
    vnoremap <silent><F1> :JSHint<CR>

    " show next jshint error
    nnoremap <silent><F2> :lnext<CR>
    inoremap <silent><F2> <C-O>:lnext<CR>
    vnoremap <silent><F2> :lnext<CR>

    " show previous jshint error
    nnoremap <silent><F3> :lprevious<CR>
    inoremap <silent><F3> <C-O>:lprevious<CR>
    vnoremap <silent><F3> :lprevious<CR>
" }

"\ Terminal in vim {
  "\ https://stackoverflow.com/a/46822285/3136861

  tnoremap <ESC><ESC> <C-\><C-N>
  "\ The above allow hitting ESC twice exit exit terminal mode back to normal-mode
  "\ https://stackoverflow.com/a/29293191/3136861

  "/ The next line causes Lsp to crush !!! so commented out
  "set shell=bash\ --login
  "\ The above will load my .bashrc when :term
  "\ https://stackoverflow.com/questions/1694599/how-do-i-get-vims-sh-command-to-source-my-bashrc
"}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup vimrcEx
"/ augroup Start ---------------------------------------

" Clear all autocmds in the group
autocmd!

"autocmd FileType text setlocal textwidth=78

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif

au BufNewFile,BufRead *.jade set filetype=pug
au BufNewFile,BufRead *.sass set filetype=sass

"for ruby, autoindent with two spaces, always expand tabs
"autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType sass, scss set ai sw=2,sts=2 et
autocmd FileType jade set ai sw=2,sts=2 et

"/ Syntax for python
"autocmd FileType python set sw=4 sts=4 et
au BufNewFile,BufRead *.py set ts=4 sts=4 sw=4 ai et filetype=python
"/ Ref: https://realpython.com/vim-and-python-a-match-made-in-heaven/


"/ Syntax for coffee script:
"/ https://github.com/kchmck/vim-coffee-script
"/ http://stackoverflow.com/questions/5602767/why-is-vim-not-detecting-my-coffescript-filetype
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType coffee set ai sw=2 sts=2 et

"/ **
"/ **
"/ ** [Filetype for JavaScript and Typescript]
"/ **
"/ **
"/ ** ---------------------------------
  "/ peitalin/vim-jsx-typescript set javascript ft as typescript
  "/ so force it back.
    autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
    autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  "/ No need to set typsecript ft if use peitalin/vim-jsx-typescript,
  "/ it set it for you.
    autocmd BufNewFile,BufRead *.ts set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
"/ ** ---------------------------------
"/ ** [Filetype for JavaScript and Typescript END]


"/ **
"/ **
"/ ** [Filetype for json]
"/ **
"/ **
"/ ** ---------------------------------
    "/ I think coc-jsonc plugin should have handle this but it doesnot so I
    "/ remap it to jsonc.
    au BufNewFile,BufRead *.json set filetype=jsonc

    autocmd FileType json syntax match Comment +\/\/.\+$+
    "/ the previous line is from:
    "/   https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file
    "/ and also seen in:
    "/   https://stackoverflow.com/a/68403085/3136861
    "/ but it does not seem to do any thing.

    autocmd FileType json set commentstring=\/\/%s
    "/ Previousline set Tomtom/tcomment's plugin commentString for json
    "/ so that it does not 'block-comment' the selected line
    "/ see:
    "/   https://stackoverflow.com/a/22475046/3136861
"/ ** ---------------------------------
"/ ** [Filetype for JavaScript and Typescript END]


autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:&gt;

" Indent p tags
"autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

" Don't syntax highlight markdown because it's often wrong
autocmd! FileType mkd setlocal syn=off

" recompile coffeescript files on write
" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

"/ augroup END ---------------------------------------
augroup END

function! FtHtml()
  set filetype=html
  set filetype?
endfunction "/ FtHtml()
command! CftHtml call FtHtml()


" Code folding {----------------------------------------------------------
    set fdm=indent          "/ foldmethod

    " highlight Folded guibg=black        " color for codefolding line
    " highlight Folded guibg=gray14       " color for codefolding line
    " highlight Folded guifg=gray25 guibg=gray10
    "/ syntax color is set in colorscheme, so above is commented out

    "/ All folds are closed by default, the following set the initial folding level
    "/ http://vim.wikia.com/wiki/All_folds_open_when_opening_a_file
    set foldlevelstart=20

    "/ Syntax folding for Javascript
    "/ https://github.com/jelera/vim-javascript-syntax
    "/ this is crap, so commented out!
    "au FileType javascript call JavaScriptFold()
" }



" MISC KEY MAPS ----------------------------------------------------------

command! W :wa
"command! Q :q
"command! WQ :wq


" Window resizing mappings { ----------------------------------------
  "/ http://vim.wikia.com/wiki/Fast_window_resizing_with_plus/minus_keys
  nnoremap <S-Up> :normal <c-r>=Resize('+')<CR><CR>
  nnoremap <S-Down> :normal <c-r>=Resize('-')<CR><CR>
  nnoremap <S-Left> :normal <c-r>=Resize('<')<CR><CR>
  nnoremap <S-Right> :normal <c-r>=Resize('>')<CR><CR>

  function! Resize(dir)
    let this = winnr()
    if '+' == a:dir || '-' == a:dir
      execute "normal \<c-w>k"
      let up = winnr()
      if up != this
        execute "normal \<c-w>j"
        let x = 'bottom'
      else
        let x = 'top'
      endif
    elseif '>' == a:dir || '<' == a:dir
      execute "normal \<c-w>h"
      let left = winnr()
      if left != this
        execute "normal \<c-w>l"
        let x = 'right'
      else
        let x = 'left'
      endif
    endif
    if ('+' == a:dir && 'bottom' == x) || ('-' == a:dir && 'top' == x)
      return "1\<c-v>\<c-w>+"
    elseif ('-' == a:dir && 'bottom' == x) || ('+' == a:dir && 'top' == x)
      return "1\<c-v>\<c-w>-"
    elseif ('<' == a:dir && 'left' == x) || ('>' == a:dir && 'right' == x)
      return "1\<c-v>\<c-w><"
    elseif ('>' == a:dir && 'left' == x) || ('<' == a:dir && 'right' == x)
      return "1\<c-v>\<c-w>>"
    else
      echo "oops. check your ~/.vimrc"
      return ""
    endif
  endfunction
"}


    """"""""""""""""""""""""""""""""""""""""""
    " OPEN FILES IN DIRECTORY OF CURRENT FILE
    """"""""""""""""""""""""""""""""""""""""""
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
    " map <leader>e :edit %%  "/ similar to :view but edit-able, so commented out
    map <leader>d :view %%


    """"""""""""""""""""""
    " RENAME CURRENT FILE
    """"""""""""""""""""""
    function! RenameFile()
      let old_name = expand('%')
      let new_name = input('New file name: ', expand('%'))
      if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
      endif
    endfunction
    nnoremap <leader>fr :call RenameFile()<cr>

    """"""""""""""""""""""""""""
    " OPEN ITERM AT CURRENT PATH
    """"""""""""""""""""""""""""
    function! OpenItermAtPath_dir()
      " Full dir path: eg. '/home/user/nvim' in '/home/user/nvim/init.vim'
      let path = expand("%:p:h")
      exec ':!open -a iterm ' . path
    endfunction
    command! GGopenItermHere call OpenItermAtPath_dir()

    """"""""""""""""""""""""""""
    " cd to desktop
    """"""""""""""""""""""""""""
    function! Cd_to_desktop()
      exec ':cd ~/Desktop'
    endfunction
    command! GGcddt call Cd_to_desktop()


"/ ==============
"/ section
"/   window
"/   slip
"/ ==============
  "# Window height resizing (@TODO):
  "nnoremap <leader>www 30<c-w>+
  "nnoremap <leader>nnn 30<c-w>-

  "# Window width resizing:
    "# Decrease:
    nnoremap <silent> w- 30<c-w><
    "# Increase:
    nnoremap <silent> w= 30<c-w>>
    "# Resizing window can also be accomplished by following:
    "#   nnoremap <silent> w- :exec "vertical resize " . (winwidth(0) - 30)<CR>
    "# see: https://vim.fandom.com/wiki/Resize_splits_more_quickly

  "# Set the window width to:
  nnoremap <silent> w0 :exec "vertical resize " . 100<CR>

  "# Move around splits
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l

  "# Jump to window:
  "# http://stackoverflow.com/questions/6403716/shortcut-for-moving-between-vim-windows
  let i = 1
  while i <= 19
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
  endwhile


"/ ==============
"/ section
"/ ==============

"/ Interact with shell { --------------------------------------------------
    "/ Next command open Terminal at pwd via npm module 'ttab'
    "/ to install ttab: sudo npm install ttab -g
    command! -nargs=* Term !ttab -d `pwd`
"/ }

"/ ## scrolling horizontal { ------------------------------------------------
    "/ No scrolling for now, need a solution
        " nmap <s-l> zl  "scroll left
        " nmap <s-h> zh  "scroll right
"/ }

" ## Wrapping behaviour { ------------------------------------------------
    set nowrap nolinebreak list
    command! -nargs=* Wrapword set wrap linebreak nolist
    command! -nargs=* Wrap set wrap list
    command! -nargs=* Wrapoff set nowrap nolinebreak list

    " ## Break long line at 60 col
    nnoremap <leader>y 060lf i<CR><ESC>

    "/ mapping to make movements operate on 1 screen line in wrap mode
    function! ScreenMovement(movement)
      let b:gmove = "yes"     "<---- added to fix error during Wrapword
      if &wrap && b:gmove == 'yes'
        return "g" . a:movement
      else
        return a:movement
      endif
    endfunction
    onoremap <silent> <expr> j ScreenMovement("j")
    onoremap <silent> <expr> k ScreenMovement("k")
    onoremap <silent> <expr> 0 ScreenMovement("0")
    onoremap <silent> <expr> ^ ScreenMovement("^")
    onoremap <silent> <expr> $ ScreenMovement("$")
    nnoremap <silent> <expr> j ScreenMovement("j")
    nnoremap <silent> <expr> k ScreenMovement("k")
    nnoremap <silent> <expr> 0 ScreenMovement("0")
    nnoremap <silent> <expr> ^ ScreenMovement("^")
    nnoremap <silent> <expr> $ ScreenMovement("$")
    vnoremap <silent> <expr> j ScreenMovement("j")
    vnoremap <silent> <expr> k ScreenMovement("k")
    vnoremap <silent> <expr> 0 ScreenMovement("0")
    vnoremap <silent> <expr> ^ ScreenMovement("^")
    vnoremap <silent> <expr> $ ScreenMovement("$")
    vnoremap <silent> <expr> j ScreenMovement("j")
    " toggle showbreak
    function! TYShowBreak()
      if &showbreak == ''
        set showbreak=>
      else
        set showbreak=
      endif
    endfunction
    let b:gmove = "yes"
    function! TYToggleBreakMove()
      if exists("b:gmove") && b:gmove == "yes"
        let b:gmove = "no"
      else
        let b:gmove = "yes"
      endif
    endfunction
    nmap  <expr> ,b  TYShowBreak()
    nmap  <expr> ,bb  TYToggleBreakMove()
    "/ ref: http://superuser.com/questions/498267/how-do-you-move-up-within-a-single-line-thats-word-wrapped-in-vim

" }


" Inserting stuff { --------------------------------------------------------
    " ## Insert a hash rocket with <c-l>l
    imap <c-l>l <space>=><space>

    "/ == Digraph remapping ==
    "/ Since <c-k> has inoremap to insert mode's movement
    "/ for a list of digraph-key type ":help digraph-table-mbyte"
    inoremap <leader>k <c-k>
"}

" Clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>
"nnoremap <leader><leader> <c-^>


"/ Map braces and brackets
imap [ []<left>
imap ( ()<left>
imap { {}<left>

" Open line (insert mode)
inoremap <leader>O <esc>O
inoremap <leader>o <esc>o
" Open line (normal mode)
nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

"/ emacs like begin and end of line
inoremap <c-a> <esc>^i
inoremap <c-e> <esc>A
noremap <space>a ^
noremap <space>e $

"/ insert mode movements
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"/ moving aroung in command mode
"/ https://stackoverflow.com/a/15852162/3136861
cnoremap <c-h> <left>
cnoremap <c-l> <right>

"/ go to middle of current line
"/ http://superuser.com/questions/216411/go-to-middle-of-line-in-vim
map gm :call cursor(0, virtcol('$')/2)<CR>


"/ ##  line bubling (map to unimpaired plugin)
"/ not sure what the '`[' after '[e' but it behave the same as without,
"/ commented out for now until i know what it is
  " nmap <space><up>   [e`[            " bubling up one line
  " nmap <space><down> ]e`[            " bubling down one line
"/ next two bubling does not work
  " nnoremap <c-up> v:move '<-2<cr><esc>0        " bubble up one lines (after select with visual mode)
  " nnoremap <c-down> v:move '>+1<cr><esc>0      " bubble down one lines (after select with visual mode)

"\ Replay macro in register m
nnoremap <space>mm @m
"\ How to record and play macro
"\  1. [q][m]
"\  2. edit hoever you want
"\  3. [q]
"\  4. <space>mm


" cut and paste { --------------------------------------------------------
    " Plateform specific {
        if !WINDOWS()
        endif
        if WINDOWS()
            set clipboard=unnamed
        endif
        if OSX()
        endif
        if LINUX()
            set clipboard=unnamedplus
        endif
    " }

    " https://stackoverflow.com/a/11020240/3136861
    " set clipboard+=autoselect
    " set guioptions+=a

    "/ TODO
    "/ Deactive my custom paste command for now , need to redesign.

    " yank to clipboard
    " map <c-b> "*y

    " paste clipboard under cursor
    " nnoremap <c-f> "*P
    " vnoremap <c-f> "*P

    " paste previous yank under cursor
    " nnoremap <c-g> "0P
    " vnoremap <c-g> "0P

    "/ paste clipboard *after* cursor
    "nnoremap <leader>f "*p
    "vnoremap <leader>f "*p
    "/     leader-f is conflicting with [coc] formate select region
    "/     so it is commented out.

    " paste previous yank *after* cursor
    " nnoremap <leader>g "0p
    " vnoremap <leader>g "0p
"}


" Remove trailing spaces { -----------------------------------------------
    " Old version of remove trailing spaces {
        "/ ref http://www.bestofvim.com/tip/trailing-whitespace/
        " nnoremap <Leader>rtw :%s/\s\+$//e<CR>
        " function! TrimWhiteSpace()
        "     %s/\s\+$//e
        " endfunction
        " nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
        " autocmd FileWritePre    * :call TrimWhiteSpace()
        " autocmd FileAppendPre   * :call TrimWhiteSpace()
        " autocmd FilterWritePre  * :call TrimWhiteSpace()
        " autocmd BufWritePre     * :call TrimWhiteSpace()
    " } End Old version of remove trailing spaces

    "/ ref: http://vimcasts.org/episodes/tidying-whitespace/
    function! <SID>StripTrailingWhitespaces()
        "/ Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        "/ Do the business:
        %s/\s\+$//e
        "/ Clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    nnoremap <silent> <leader>stw :call <SID>StripTrailingWhitespaces()<CR>
    autocmd BufWritePre *.py,*.xml,*,txt,*.html,*.sass,*.css,*.js :call <SID>StripTrailingWhitespaces()
" } End :: Remove trailing spaces



" Create current directory path
":nnoremap <leader>m :!mkdir -p %:h
"let g:ragtag_global_maps = 1


" { edit .vimrc file ------------------------------------------------------
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
" }

" Novice arrow disable { --------------------------------------------------
    " map <Left>  :echo "             do not use arrow key!"<cr>
    " map <Right> :echo "             do not use arrow key!"<cr>
    " map <Up>    :echo "             do not use arrow key!"<cr>
    " map <Down>  :echo "             do not use arrow key!"<cr>
" }


" search and replace helper  { --------------------------------------------
    noremap ;' :%s:::g<Left><Left><Left>
    noremap ;; :%s:::cg<Left><Left><Left><Left>
    "/ These mappings save you some keystrokes and put you where you start typing
    "/ your search pattern. After typing it you move to the replacement part , type
    "/ it and hit return. The second version adds confirmation flag.
" }


" Stuff to figure out { --------------------------------------------------
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " MULTIPURPOSE TAB KEY
    " Indent if we're at the beginning of a line. Else, do completion.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " function! InsertTabWrapper()
    "   let col = col('.') - 1
    "   if !col || getline('.')[col - 1] !~ '\k'
    "     return "\<tab>"
    "     else
    "     return "\<c-p>"
    "   endif
    " endfunction
    "/ ***
    "/ *** the following is conflicting with asyncomplete so commented out
    "/ ***
      " inoremap <tab> <c-r>=InsertTabWrapper()<cr>
      " inoremap <s-tab> <c-n>





    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " PROMOTE VARIABLE TO RSPEC LET
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " function! PromoteToLet()
    "   :normal! dd
    "   " :exec '?^\s*it\>'
    "   :normal! P
    "   :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
    "   :normal ==
    " endfunction
    " :command! PromoteToLet :call PromoteToLet()
    " :map <leader>pm :PromoteToLet<cr>



    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " MAPS TO JUMP TO SPECIFIC COMMAND-T TARGETS AND FILES
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " map <leader>gr :topleft :split config/routes.rb<cr>

    " function! ShowRoutes()
    "   "/ Requires 'scratch' plugin
    "   :topleft 100 :split __Routes__
    "   "/ Make sure Vim doesn't write __Routes__ as a file
    "   :set buftype=nofile
    "   "/ Delete everything
    "   :normal 1GdG
    "   "/ Put routes output in buffer
    "   :0r! bundle exec rake -s routes
    "   "/ Size window to number of lines (1 plus rake output length)
    "   :exec ":normal " . line("$") . "_ "
    "   "/ Move cursor to bottom
    "   :normal 1GG
    "   "/ Delete empty trailing line
    "   :normal dd
    " endfunction
    " map <leader>gR :call ShowRoutes()<cr>

    " map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
    " map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
    " map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
    " map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
    " map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
    " map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
    " map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets/sass<cr>
    " map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
    " map <leader>gg :topleft 100 :split Gemfile<cr>
    " map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
    "map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
    "map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

    ",tags directory
    "set tags=./tags;
    " map <leader>rt :!ctags --extra=+f --exclude=.git --exclude=log --exclude=tags --exclude=doc -R * `rvm gemdir`/bundler/gems/*<CR><C-M>
    " map <leader>rt :!ctags --extra=+f --exclude=.git --exclude=log --exclude=tags --exclude=doc --exclude=public -R * `rvm gemdir`/bundler/gems/*<CR><C-M>
    " map <leader>rt :!ctags --extra=+f --exclude=.git --exclude=log --exclude=tags --exclude=doc --exclude=public -R * `bundle show --paths`<CR><C-M>
    " ctags usage:
    "   CTRL + ] to jump to method definition from a 'method call'
    "   CTRL + t to jump back from the method definition to the call

" }

" Abbreviations { --------------------------------------------------------
    iabbrev adn and
    iabbrev waht what
    iabbrev tehn then
    iabbrev -_- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    " ref: http://learnvimscriptthehardway.stevelosh.com/chapters/08.html
" }

" NERDTREE {--------------------------------------------------------------
    " [note] The following does not work
    "
    " function! NERDTreeMountPEdit()
    "     " from:> http://stackoverflow.com/questions/28396256/nerdtree-live-preview-like-sublime-sidebar
    "     if exists("g:loaded_nerdree_live_preview_mapping")
    "       finish
    "     endif
    "     let g:loaded_nerdree_live_preview_mapping = 1
    "
    "     call NERDTreeAddKeyMap({
    "           \ 'key':           '<up>',
    "           \ 'callback':      'NERDTreeLivePreview',
    "           \ 'quickhelpText': 'preview',
    "           \ })
    "
    "     function! NERDTreeLivePreview()
    "       " Get the path of the item under the cursor if possible:
    "       let current_file = g:NERDTreeFileNode.GetSelected()
    "
    "       if current_file == {}
    "         return
    "       else
    "         exe 'vert pedit '.current_file.path.str()
    "       endif
    "     endfunction
    " endfunction
" }

" Buffer {----------------------------------------------------------------
  " The following function delete all hidden buffers
  " from:> http://stackoverflow.com/questions/8450919/how-can-i-delete-all-hidden-buffers
  function! DeleteHiddenBuffers()
      let tpbl=[]
      call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
      for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
          silent execute 'bwipeout' buf
      endfor
  endfunction
  command! GGdhbs call DeleteHiddenBuffers() <bar> :echo ":call DeleteHiddenBuffers()"


  " @TODO folllowing has not being implimented
  "
  "Close current buffer without close current window
  "from:> http://vim.wikia.com/wiki/Deleting_a_buffer_without_closing_the_window
  " nnoremap <leader>cc :Bclose<cr>
  "Other available commands:
  "   :Bclose         " Close buffer in current window.
  "   :Bclose N       " Close buffer number N (as shown by :ls).
  "   :Bclose Name    " Close buffer named Name (as shown by :ls).
"}


" NerdTree Preview {-------------------------------------------------
  "/ https://stackoverflow.com/questions/13119754/is-it-possible-to-just-view-files-content-when-traverse-nerdtree
  "/ https://stackoverflow.com/a/22183492/3136861
  let g:nerd_preview_enabled = 0
  let g:preview_last_buffer  = 0

  function! NerdTreePreview()
    " Only on nerdtree window
    if (&ft ==# 'nerdtree')
      " Get filename
      let l:filename = substitute(getline("."), "^\\s\\+\\|\\s\\+$","","g")

      " Preview if it is not a folder
      let l:lastchar = strpart(l:filename, strlen(l:filename) - 1, 1)
      if (l:lastchar != "/" && strpart(l:filename, 0 ,2) != "..")

        let l:store_buffer_to_close = 1
        if (bufnr(l:filename) > 0)
          " Don't close if the buffer is already open
          let l:store_buffer_to_close = 0
        endif

        " Do preview
        execute "normal go"

        " Close previews buffer
        if (g:preview_last_buffer > 0)
          execute "bwipeout " . g:preview_last_buffer
          let g:preview_last_buffer = 0
        endif

        " Set last buffer to close it later
        if (l:store_buffer_to_close)
          let g:preview_last_buffer = bufnr(l:filename)
        endif
      endif
    elseif (g:preview_last_buffer > 0)
      " Close last previewed buffer
      let g:preview_last_buffer = 0
    endif
  endfunction

  function! NerdPreviewToggle()
    echo 'preview Toggled'
    if (g:nerd_preview_enabled)
      let g:nerd_preview_enabled = 0
      augroup nerdpreview
        autocmd!
        augroup END
    else
      let g:nerd_preview_enabled = 1
      augroup nerdpreview
        autocmd!
        autocmd CursorMoved * nested call NerdTreePreview()
      augroup END
    endif
  endfunction

  command! GGpreviewToggle call NerdPreviewToggle()
"}


"""""""""""""""""""""""""""""""""""""""
" Launch NERDTree and set preview mode
"""""""""""""""""""""""""""""""""""""""
function! LaunchNERDTreeSetPreview()
  let path = expand("%:p:h")
  exec ':NERDTree'
  exec ':GGpreviewToggle'
endfunction
command! GGnerdPreview call LaunchNERDTreeSetPreview()


" Yank filename/dirname {-------------------------------------------------
    " copy result to the system clipboard and echo the result
    " the cb> prompt means the clipboard
    "
    " File Name, eg. init.vim
    map <Leader>fn :let @+ = expand("%:t") \| echo 'cb> ' . @+<CR>
    " File Path, eg. /home/user/nvim/init.vim
    map <Leader>fp :let @+ = expand("%:p") \| echo 'cb> ' . @+<CR>
    " Directory Path, eg. /home/user/nvim
    map <Leader>dp :let @+ = expand("%:p:h") \| echo 'cb> ' . @+<CR>
    " Directory Name, eg. nvim
    map <Leader>dn :let @+ = expand("%:p:h:t") \| echo 'cb> ' . @+<CR>

    function! GetPath_full()
      " Full Path + filename + ext: eg. '/home/user/nvim/init.vim'
      let @+ = expand("%:p")
      echo 'cb> ' . @+
    endfunction
    command! GGpathFull call GetPath_full()

    function! GetPath_base()
      " Filename + ext, eg: 'init.vim' in '/home/user/nvim/init.vim'
      let @+ = expand("%:t")
      echo 'cb> ' . @+
    endfunction
    command! GGpathBase call GetPath_base()

    function! GetPath_dir()
      " Full dir path: eg. '/home/user/nvim' in '/home/user/nvim/init.vim'
      let @+ = expand("%:p:h")
      echo 'cb> ' . @+
    endfunction
    command! GGpathDir call GetPath_dir()

    function! GetPath_DirTail()
      " Current Enclosing Dir Name, eg. 'nvim' in '/home/user/nvim/init.vim'
      let @+ = expand("%:p:h:t")
      echo 'cb> ' . @+
    endfunction
    command! GGpathDirTail call GetPath_DirTail()

    " Ref: http://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim/37192216#37192216
" }


  "/ ***
  "/ *** YouCompleteMe
  "/ ***
    " "/ Valloric/YouCompleteMe {
    "   let g:ycm_error_symbol = '>'
    "   let g:ycm_warning_symbol = '•'
    "   nnoremap <leader>vvdd :YcmCompleter GoTo<CR>
    " "}



"/ Far plugin configuration {{{ ----------------------------------


  "/ --------------------------
  "/ Far uncomment the follwing
  "/ and restart vim to enable
  "/ far's debug mode
  "/ --------------------------
  "let g:far#debug = 1

  "/ --------------------
  "/ Far enabling ripgrep
  "/ --------------------

    "/ from https://github.com/brooth/dotfiles/blob/master/.vimrc
    " let g:far#debug = 1
    let g:far#window_width = 60
    let g:far#auto_preview = 1
    let g:far#preview_window_height = 7
    let g:far#auto_write_replaced_buffers = 0
    let g:far#check_window_resize_period = 0
    let g:far#file_mask_favorites = ['%', '**/*.*', '**/*.py', '**/*.vim', '**/*.txt']
    let g:far#enable_undo=1

    "/ see: https://github.com/brooth/far.vim/issues/69
    command! CfarSrcRipgrep let g:far#source = 'rg' | echo 'g:far#source='.g:far#source
    command! CfarSrcVimgrep let g:far#source = 'vimgrep' | echo 'g:far#source='.g:far#source
    command! CfarSrcAg let g:far#source = 'ag' | echo 'g:far#source='.g:far#source
    command! CfarSrcCurrent echom g:far#source

  "/ ---------------------
  "/ Far working directory
  "/ ---------------------
    function! FarPwd()
      echom 'g:far#cwd: '.g:far#cwd
    endfunction "/ FarPwd()
    command! CfarPwd call FarPwd()

    function! FarCd()
      echom '[before] g:far#cwd='.g:far#cwd

      if !WINDOWS()
        "echom 'Runtime envrionment: Not windows'
        let _dir = system('pwd')
      endif
      if WINDOWS()
        "echom 'Runtime envrionment: Windows'
        let _dir = system('cd')
      endif

      "/ _dir contain the char '^@', remove it
      "/ Ref:
      "/    superuser.com/questions/935574/get-rid-of-null-character-in-vim-variable
      let g:far#cwd = substitute(_dir, '[[:cntrl:]]', '', 'g')

      echom '   [now] g:far#cwd='.g:far#cwd
    endfunction "/ FarCd()
    command! CfarCd call FarCd()

"/ Far plugin configuration END }}}

" Syntastic plugin { ----------------------------------------
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 0
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_typescript_checkers = ['tslint']

    " let g:syntastic_javascript_eslint_exe = 'npm run lint --'
    "/ The above from https://medium.com/@hpux/vim-and-eslint-16fa08cc580f
    "/ take too long to run so comment out

    "/ Disable Syntastic by default, to run syntax check, manually by typing :SyntasticCheck
    "/ https://stackoverflow.com/a/21434697/3136861
    let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" }


"/ ##
"/ ## Syntax highlight info
"/ ##
  map <F6> :echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")
  "/ The above tell you "what kind syntax ID that it is thing under the given position"
  "/ http://linuxyz.blogspot.ca/search/label/VIM

  function! GetSyntaxId()
    "/ Tell you "what kind syntax ID that it is thing under the given position"
    "/ http://linuxyz.blogspot.ca/search/label/VIM
    echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")
  endfunction
  command! CsynId call GetSyntaxId()

  function! GetSyntaxInfo()
    "/ Tell you "what kind syntax ID that it is thing under the given position"
    "/   this one is from github.com/tomtom
    "/ https://github.com/tomtom/tcomment_vim/issues/186#issuecomment-458839299
    echom &ft synIDattr(synID(line("."), col("."), 1), "name")
  endfunction
  command! CsynInfo call GetSyntaxInfo()


"/ wildignore {{{ ---------------------------------------------------------

  "/ Ref:
  "/  stackoverflow.com/questions/11978291/how-do-i-use-wildignore-in-vim
  "/  stackoverflow.com/questions/579871/can-i-make-vim-respect-my-gitignore-files/579886#579886
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/dist/*
  " Windows ('noshellslash')

"/ }}}

function! CustomCommand_help()
  :echom "-------- GGhelpGG :: CustomCommand_help()"
  :echom "GGdhbs : delete hidden buffer"
  :echom "GGcddt : make current directory point to desktop"
  :echom "GGcusItermHere : open item2 w current directory"
  :echom "<leader>fr : Rename current file"
  :echom "<leader>d : Open directory of current file"
endfunction
command! GGhelpGG call CustomCommand_help()

" END .vimrc

