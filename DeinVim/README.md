# dein.vimでPython用の環境を構築する

```
pip install jedi
```

~/.bashrc　に以下を書き込む
```bash
export PYTHONPATH=$PYTHONPATH:/home/tomohiro/miniconda3/envs/chips/lib/python3.5/site-packages
```

dein.vimのインストール方法
```
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh .vim/dein/
```

```
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
      if !isdirectory(s:dein_repo_dir)
              execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
                endif
                  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
                  endif

                  " 設定開始
                  if dein#load_state(s:dein_dir)
                        call dein#begin(s:dein_dir)

                          " プラグインリストを収めた TOML ファイル
                            let g:rc_dir    = expand('~/.vim/rc')
                              let s:toml      = g:rc_dir . '/dein.toml'
                                " TOML を読み込み、キャッシュしておく
                                  call dein#load_toml(s:toml,      {'lazy': 0}) 

                                    " 設定終了
                                      call dein#end()
                                        call dein#save_state()
                                        endif

                                        " もし、未インストールものものがあったらインストール
                                        if dein#check_install()
                                              call dein#install()
                                              endif

                                              ```

                                              githubから手動でダウンロードしてくる

                                              dein.toml
                                              ```
                                              [[plugins]]
                                              repo = 'davidhalter/jedi-vim'
                                              on_ft = 'python'

                                              [[plugins]]
                                              repo = 'simeji/winresizer'

                                              [[plugins]]
                                              repo = 'scrooloose/nerdtree'

                                              [[plugins]]
                                              repo = 'nathanaelkane/vim-indent-guides'

                                              [[plugins]]
                                              repo = 'vim-syntastic/syntastic'

                                              [[plugins]]
                                              repo = 'nvie/vim-flake8'
                                              ```

                                              ```
                                              .vim
                                              ├── dein
                                              │   └── repos
                                              │       └── github.com
                                              │           ├── Shougo
                                              │           │   └── dein.vim # dein.vim
                                              │           ├── davidhalter
                                              │           │   └── jedi-vim # pythonの補完とか
                                              │           ├── nathanaelkane
                                              │           │   └── vim-indent-guides # インデントを可視化
                                              │           ├── nvie
                                              │           │   └── vim-flake8 # flake8を指摘してくれる
                                              │           ├── scrooloose
                                              │           │   └── nerdtree # ディレクトリツリーを表示できる
                                              │           ├── simeji
                                              │           │   └── winresizer # 画面分割時のウィンドウサイズ変更を簡単に
                                              │           ├── vim-scripts
                                              │           │   └── vcscommand.vim
                                              │           └── vim-syntastic
                                              │               └── syntastic # エラーとかチェックしてくれる
                                              └── rc
                                                  ├── dein.toml
                                                      └── dein_lazy.toml
```
