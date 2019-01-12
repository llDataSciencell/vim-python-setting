if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/tomohiro/.vimrc', '/home/tomohiro/.vim/rc/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/tomohiro/.vim/dein'
let g:dein#_runtime_path = '/home/tomohiro/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/tomohiro/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/tomohiro/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/tomohiro/.cache/dein/repos/github.com/Shougo/dein.vim,/home/tomohiro/.cache/dein/.cache/.vimrc/.dein,/home/tomohiro/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim74,/home/tomohiro/.vim/dein/.cache/.vimrc/.dein/after,/home/tomohiro/.cache/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/tomohiro/.vim/after'
filetype off
