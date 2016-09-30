"""""""""""""""""""""""""""""""""""
" CONFIGURAÇÕES PADRONIZADAS GOGS "
"""""""""""""""""""""""""""""""""""
set number                    " Numera as linhas
set linebreak                 " Quebra a linha sem quebrar a palavra
set nobackup                  " Não salva arquivos de backup~
set wildmode=longest,list     " Completa o comando com TAB igual o bash
set ignorecase                " Ignora o case sensitive nas buscas
set smartcase                 " Se tiver alguma letra maiúscula, ativa o case sensitive
set gdefault                  " Sempre substitui todas as palavras, não só primeira
set smartindent               " Auto-indenta
set expandtab                 " Identa com espaços
set tabstop=2                 " Quantidade de espaços por indentação
set shiftwidth=2              " Quantidade de espaços da auto-indentação
set guioptions-=T             " Deixa a GUI sem a toolbar
set autochdir                 " Vai pro diretório do arquivo aberto
set cursorline                " Mostra linha atual mais clara
set pumheight=15              " Máximo de palavras no popup de autocomplete
set completeopt=menu,preview  " Como mostrar as possibilidade de inserção
set spelllang=pt              " Escolhe o dicionário
            
filetype plugin indent on

" Permite selecionar com SHIFT + SETA como no Windows
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

" Atalhos
vnoremap <C-C> "+y
vnoremap <C-X> "+x    
vnoremap <C-V> "+p
inoremap <C-V> <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>
inoremap <C-S> <C-O>:update<CR>
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G

" Copia a linha e apaga a linha
imap <C-C> <C-O><S-V>"+y
imap <C-X> <C-O><S-V>"+x

" Abas
inoremap <C-T> <C-O>:tabnew<CR>
inoremap <C-TAB> <C-O>:tabnext<CR>
inoremap <C-S-TAB> <C-O>:tabprevious<CR>
inoremap <C-F4> <C-O>:x!<CR>

" Divide janela
imap <C-W><C-S> <C-O>:split<CR>
imap <C-W><C-N> <C-O>:vnew<CR>
smap <C-W><C-N> <C-O>:vnew<CR>
imap <C-W><C-V> <C-O>:vsplit<CR>
imap <C-W><C-Q> <C-O>:q<CR>
imap <C-W><C-W> <C-O>:winc w<CR>

noremap <TAB> >
noremap <S-TAB> <

inoremap { {}<LEFT>
inoremap [ ] [ ]]<LEFT>

" Move entrelinhas visíveis, e não somente físicas, quando em WRAP
"inoremap <expr><UP> pumvisible( )) ? "<UP>" : "<C-O>gk"
"inoremap <expr><DOWN> pumvisible( )) ? "<DOWN>" : "<C-O>gj"

