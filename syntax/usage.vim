if exists('b:current_syntax')
    finish
endif

syntax match lineError "\v[^;]$"
syntax match usageParens "\v\(|\)"
syntax match usageSpecial "\v[=\|(\.\.\.)<>]"

highlight link lineError Error
highlight link usageParens Special
highlight link usageSpecial Number

let b:current_syntax = 'usage'
