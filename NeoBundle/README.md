# NeoBundleを使ったvimのインストール

```bash
# 配置先のディレクトリを作成
$ mkdir -p ~/.vim/bundle
# NeoBundleをリポジトリから取得
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

vimのファイルをgitで管理しているファイルに置き換える

escキーを押して、以下を入力
```
:NeoBundleInstall
```
pip install jedi

## Pythonのコードを自動整形(保存した時に、強調表示)

```bash
pip install pep8 pyflakes
```

## NeoVimのインストール(今回は使わないので、参考程度)

for linux
```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

for MacOS
```bash
brew install neovim
```

