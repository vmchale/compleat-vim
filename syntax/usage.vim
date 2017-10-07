if exists('b:current_syntax')
    finish
endif

syntax match lineError "\v[^;]$"
syntax match usageSpecial "\v[=\|(\.\.\.)<>;]"
syntax match usageParens "\v\(|\)"
syntax region usageArg start='<' end='>' contains=usageSpecial

highlight link lineError Error
highlight link usageParens Special
highlight link usageSpecial Number
highlight link usageArg Keyword

let b:current_syntax = 'usage'
