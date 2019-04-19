scriptencoding utf-8
if exists('g:loaded_defx_icons')
  finish
endif
let g:loaded_defx_icons = 1

let s:enable_syntax_highlight = get(g:, 'defx_icons_enable_syntax_highlight', 1)
let s:column_length = get(g:, 'defx_icons_column_length', 2)
let s:parent_icon = get(g:, 'defx_icons_parent_icon', '')
let s:directory_icon = get(g:, 'defx_icons_directory_icon', '')
let s:mark_icon = get(g: , 'defx_icons_mark_icon', '*')
let s:default_icon = get(g:, 'defx_icons_default_icon', '')
let s:directory_symlink_icon = get(g:, 'defx_icons_directory_symlink_icon', '')
let s:root_opened_tree_icon = get(g:, 'defx_icons_root_opened_tree_icon', '')
let s:nested_closed_tree_icon = get(g: ,'defx_icons_nested_closed_tree_icon', '')
let s:nested_opened_tree_icon = get(g: ,'defx_icons_nested_opened_tree_icon', '')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:colors = {
      \ 'brown': '905532',
      \ 'aqua': '3AFFDB',
      \ 'blue': '689FB6',
      \ 'darkBlue': '44788E',
      \ 'purple': '834F79',
      \ 'lightPurple': '834F79',
      \ 'red': 'AE403F',
      \ 'beige': 'F5C06F',
      \ 'yellow': 'F09F17',
      \ 'orange': 'D4843E',
      \ 'darkOrange': 'F16529',
      \ 'pink': 'CB6F6F',
      \ 'salmon': 'EE6E73',
      \ 'green': '8FAA54',
      \ 'lightGreen': '31B53E',
      \ 'white': 'FFFFFF',
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors of each lang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:extensions = extend({
      \ 'styl': {'icon': '', 'color': s:colors.green},
      \ 'sass': {'icon': '', 'color': s:colors.white},
      \ 'scss': {'icon': '', 'color': s:colors.pink},
      \ 'htm': {'icon': '', 'color': s:colors.darkOrange},
      \ 'html': {'icon': '', 'color': s:colors.darkOrange},
      \ 'slim': {'icon': '', 'color': s:colors.orange},
      \ 'ejs': {'icon': '', 'color': s:colors.yellow},
      \ 'css': {'icon': '', 'color': s:colors.blue},
      \ 'less': {'icon': '', 'color': s:colors.darkBlue},
      \ 'md': {'icon': '', 'color': s:colors.yellow},
      \ 'markdown': {'icon': '', 'color': s:colors.yellow},
      \ 'rmd': {'icon': '', 'color': s:colors.white},
      \ 'json': {'icon': '', 'color': s:colors.beige},
      \ 'js': {'icon': '', 'color': s:colors.beige},
      \ 'jsx': {'icon': '', 'color': s:colors.blue},
      \ 'rb': {'icon': '', 'color': s:colors.red},
      \ 'php': {'icon': '', 'color': s:colors.purple},
      \ 'py': {'icon': '', 'color': s:colors.yellow},
      \ 'pyc': {'icon': '', 'color': s:colors.yellow},
      \ 'pyo': {'icon': '', 'color': s:colors.yellow},
      \ 'pyd': {'icon': '', 'color': s:colors.yellow},
      \ 'coffee': {'icon': '', 'color': s:colors.brown},
      \ 'mustache': {'icon': '', 'color': s:colors.orange},
      \ 'hbs': {'icon': '', 'color': s:colors.orange},
      \ 'conf': {'icon': '', 'color': s:colors.white},
      \ 'ini': {'icon': '', 'color': s:colors.white},
      \ 'yml': {'icon': '', 'color': s:colors.white},
      \ 'yaml': {'icon': '', 'color': s:colors.white},
      \ 'bat': {'icon': '', 'color': s:colors.white},
      \ 'jpg': {'icon': '', 'color': s:colors.aqua},
      \ 'jpeg': {'icon': '', 'color': s:colors.aqua},
      \ 'bmp': {'icon': '', 'color': s:colors.aqua},
      \ 'png': {'icon': '', 'color': s:colors.aqua},
      \ 'gif': {'icon': '', 'color': s:colors.aqua},
      \ 'ico': {'icon': '', 'color': s:colors.aqua},
      \ 'twig': {'icon': '', 'color': s:colors.green},
      \ 'cpp': {'icon': '', 'color': s:colors.blue},
      \ 'cxx': {'icon': '', 'color': s:colors.blue},
      \ 'cc': {'icon': '', 'color': s:colors.blue},
      \ 'cp': {'icon': '', 'color': s:colors.blue},
      \ 'c': {'icon': '', 'color': s:colors.blue},
      \ 'h': {'icon': '', 'color': s:colors.white},
      \ 'hpp': {'icon': '', 'color': s:colors.white},
      \ 'hxx': {'icon': '', 'color': s:colors.white},
      \ 'hs': {'icon': '', 'color': s:colors.beige},
      \ 'lhs': {'icon': '', 'color': s:colors.beige},
      \ 'lua': {'icon': '', 'color': s:colors.purple},
      \ 'java': {'icon': '', 'color': s:colors.purple},
      \ 'sh': {'icon': '', 'color': s:colors.lightPurple},
      \ 'fish': {'icon': '', 'color': s:colors.green},
      \ 'bash': {'icon': '', 'color': s:colors.white},
      \ 'zsh': {'icon': '', 'color': s:colors.white},
      \ 'ksh': {'icon': '', 'color': s:colors.white},
      \ 'csh': {'icon': '', 'color': s:colors.white},
      \ 'awk': {'icon': '', 'color': s:colors.white},
      \ 'ps1': {'icon': '', 'color': s:colors.white},
      \ 'ml': {'icon': 'λ', 'color': s:colors.yellow},
      \ 'mli': {'icon': 'λ', 'color': s:colors.yellow},
      \ 'diff': {'icon': '', 'color': s:colors.white},
      \ 'db': {'icon': '', 'color': s:colors.blue},
      \ 'sql': {'icon': '', 'color': s:colors.darkBlue},
      \ 'dump': {'icon': '', 'color': s:colors.blue},
      \ 'clj': {'icon': '', 'color': s:colors.green},
      \ 'cljc': {'icon': '', 'color': s:colors.green},
      \ 'cljs': {'icon': '', 'color': s:colors.green},
      \ 'edn': {'icon': '', 'color': s:colors.green},
      \ 'scala': {'icon': '', 'color': s:colors.red},
      \ 'go': {'icon': '', 'color': s:colors.beige},
      \ 'dart': {'icon': '', 'color': s:colors.white},
      \ 'xul': {'icon': '', 'color': s:colors.darkOrange},
      \ 'sln': {'icon': '', 'color': s:colors.purple},
      \ 'suo': {'icon': '', 'color': s:colors.purple},
      \ 'pl': {'icon': '', 'color': s:colors.blue},
      \ 'pm': {'icon': '', 'color': s:colors.blue},
      \ 't': {'icon': '', 'color': s:colors.blue},
      \ 'rss': {'icon': '', 'color': s:colors.darkOrange},
      \ 'fsscript': {'icon': '', 'color': s:colors.blue},
      \ 'fsx': {'icon': '', 'color': s:colors.blue},
      \ 'fs': {'icon': '', 'color': s:colors.blue},
      \ 'fsi': {'icon': '', 'color': s:colors.blue},
      \ 'rs': {'icon': '', 'color': s:colors.darkOrange},
      \ 'rlib': {'icon': '', 'color': s:colors.darkOrange},
      \ 'd': {'icon': '', 'color': s:colors.red},
      \ 'erl': {'icon': '', 'color': s:colors.lightPurple},
      \ 'hrl': {'icon': '', 'color': s:colors.pink},
      \ 'vim': {'icon': '', 'color': s:colors.green},
      \ 'ai': {'icon': '', 'color': s:colors.darkOrange},
      \ 'psd': {'icon': '', 'color': s:colors.darkBlue},
      \ 'psb': {'icon': '', 'color': s:colors.darkBlue},
      \ 'ts': {'icon': '', 'color': s:colors.blue},
      \ 'tsx': {'icon': '', 'color': s:colors.white},
      \ 'jl': {'icon': '', 'color': s:colors.purple},
      \ 'pp': {'icon': '', 'color': s:colors.white},
      \ 'vue': {'icon': '﵂', 'color': s:colors.green},
      \ }, get(g:, 'defx_icons_extensions', {}))

let s:exact_matches = extend({
      \ 'exact-match-case-sensitive-1.txt': {'icon': '1', 'color': s:colors.white},
      \ 'exact-match-case-sensitive-2': {'icon': '2', 'color': s:colors.white},
      \ 'gruntfile.coffee': {'icon': '', 'color': s:colors.yellow},
      \ 'gruntfile.js': {'icon': '', 'color': s:colors.yellow},
      \ 'gruntfile.ls': {'icon': '', 'color': s:colors.yellow},
      \ 'gulpfile.coffee': {'icon': '', 'color': s:colors.pink},
      \ 'gulpfile.js': {'icon': '', 'color': s:colors.pink},
      \ 'gulpfile.ls': {'icon': '', 'color': s:colors.pink},
      \ 'dropbox': {'icon': '', 'color': s:colors.white},
      \ '.ds_store': {'icon': '', 'color': s:colors.white},
      \ '.gitconfig': {'icon': '', 'color': s:colors.white},
      \ '.gitignore': {'icon': '', 'color': s:colors.white},
      \ '.bashrc': {'icon': '', 'color': s:colors.white},
      \ '.zshrc': {'icon': '', 'color': s:colors.white},
      \ '.vimrc': {'icon': '', 'color': s:colors.green},
      \ '.gvimrc': {'icon': '', 'color': s:colors.green},
      \ '_vimrc': {'icon': '', 'color': s:colors.green},
      \ '_gvimrc': {'icon': '', 'color': s:colors.green},
      \ '.bashprofile': {'icon': '', 'color': s:colors.white},
      \ 'favicon.ico': {'icon': '', 'color': s:colors.yellow},
      \ 'license': {'icon': '', 'color': s:colors.white},
      \ 'node_modules': {'icon': '', 'color': s:colors.green},
      \ 'react.jsx': {'icon': '', 'color': s:colors.blue},
      \ 'procfile': {'icon': '', 'color': s:colors.purple},
      \ 'dockerfile': {'icon': '', 'color': s:colors.blue},
      \ 'docker-compose.yml': {'icon': '', 'color': s:colors.yellow},
      \ }, get(g:, 'defx_icons_exact_matches', {}))

let s:pattern_matches = extend({
      \ '.*jquery.*\.js$': {'icon': '', 'color': s:colors.blue},
      \ '.*angular.*\.js$': {'icon': '', 'color': s:colors.red},
      \ '.*backbone.*\.js$': {'icon': '', 'color': s:colors.darkBlue},
      \ '.*require.*\.js$': {'icon': '', 'color': s:colors.blue},
      \ '.*materialize.*\.js$': {'icon': '', 'color': s:colors.salmon},
      \ '.*materialize.*\.css$': {'icon': '', 'color': s:colors.salmon},
      \ '.*mootools.*\.js$': {'icon': '', 'color': s:colors.white},
      \ '.*vimrc.*': {'icon': '', 'color': s:colors.green},
      \ 'Vagrantfile$': {'icon': '', 'color': s:colors.white},
      \ }, get(g:, 'defx_icon_pattern_matches', {}))

function! defx_icons#get() abort
  return {
        \ 'extensions': s:extensions,
        \ 'exact_matches': s:exact_matches,
        \ 'exact_dir_matches': get(g:, 'defx_icon_exact_dir_matches', {}),
        \ 'pattern_matches': s:pattern_matches,
        \ 'enable_syntax_highlight': s:enable_syntax_highlight,
        \ 'column_length': s:column_length,
        \ 'parent_icon': s:parent_icon,
        \ 'directory_icon': s:directory_icon,
        \ 'directory_symlink_icon': s:directory_symlink_icon,
        \ 'mark_icon': s:mark_icon,
        \ 'default_icon': s:default_icon,
        \ 'root_opened_tree_icon': s:root_opened_tree_icon,
        \ 'nested_closed_tree_icon': s:nested_closed_tree_icon,
        \ 'nested_opened_tree_icon': s:nested_opened_tree_icon,
        \ }
endfunction
