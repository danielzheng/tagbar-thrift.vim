if version < 701 || exists('g:tagbar_thrift_loaded')
    finish
endif
let g:tagbar_thrift_loaded = 1


let cwd = expand('<sfile>:p:h:h')

if has("win16") || has("win32") || has("win64") || has("win95")
    let cnf = fnamemodify(cwd."\\ctags\\thrift.cnf", ':p')
else
    let cnf = fnamemodify(cwd."/ctags/thrift.cnf", ':p')
endif

let g:tagbar_type_thrift = {
            \ 'ctagstype': 'thrift',
            \ 'kinds': [
            \ 'u:union:0:1',
            \ 'v:service:0:1',
            \ 'e:enum:0:1',
            \ 's:struct:0:1',
            \ 'f:function:0:1',
            \ ],
            \ 'sro': '.',
            \ 'deffile': cnf,
            \}
