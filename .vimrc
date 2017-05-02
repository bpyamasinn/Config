set nocompatible "vi互換ではなくvimのデフォルトとして設定

filetype off "一旦ファイル・タイプ関連を無効化
set number "行番号表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set laststatus=2 "ステータスラインを常に表示
set autoindent "オートインデント

syntax on "カラー表示
set background=dark
colorscheme molokai
set t_Co=256

"ファイル関連
set encoding=utf8 "エンコーディング
set fileencoding=utf8 "ファイルエンコーディング
set scrolloff=5 "スクロールする際に下が見れるようにする
set noswapfile "スワップファイルを作成しない
set backspace=indent,eol,start

"入力補完系
set matchpairs& matchpairs+=<:>
set showmatch "対応する括弧をハイライト表示
set hidden "変更中のファイルでも、保存しないで他のファイルを表示
set switchbuf=useopen "新しく開く代わりにすでに開いてあるバッファを開く


"タブ文字をそのまま使用する
set noexpandtab
set shiftwidth=4
set tabstop=4
"set expandtab "タブの代わりに空白文字挿入
"set ts=4 sts=0 "タブは半角4文字文のスペース

"検索系
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "ただし大文字も含めた検索の場合はその通りに検索する
set incsearch "インクリメンタルサーチを行う

"その他
"set mouse=a "マウスモード有効
set ttymouse=xterm2 "xtermとscreen対応

"ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

let php_sql_query = 1 "PHPの関数やクラスの折りたたみ
let php_sql_query = 1 "文字列の中のSQLをハイライト
let php_htmlInStrings = 1 "HTMLもハイライト
let php_noShortTags = 1 "<? を無効にする→ハイライト除外にする
"] や ) の対応エラーをハイライト
let php_parent_error_close = 1
let php_parent_error_open = 1

" ハイライト色設定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

" neocomplcacheを起動時に有効化する
let g:neocomplcache_enable_at_startup = 1
" 大文字を区切りとしたワイルドカードのように振る舞う機能
let g:neocomplcache_enable_camel_case_completion = 1
" _区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_smart_case = 1
" シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplcache_min_syntax_length = 3
"手動補完時に補完を行う入力数を制御
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

"PHP用の設定
augroup php
    autocmd!
    autocmd BufRead,BufNewFile *.tpl set ft=php
    autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict "PHP辞書ファイル指定
    ":makeでPHP構文チェック
    autocmd FileType php setlocal makeprg=php\ -l\ %
    autocmd FileType php setlocal errorformat=%m\ in\ %f\ on\ line\ %l
augroup END
