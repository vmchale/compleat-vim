if exists('b:current_syntax')
    finish
endif

syntax match lineError "\v[^;]$"
syntax match usageSpecial "\v[=\|(\.\.\.)<>;]"
syntax match usageParens "\v\(|\)"
syntax region usageArg start='<' end='\v>|$' contains=usageSpecial
syntax region usageVar start='\v^[A-Z]' end=' ' contains=usageSpecial

highlight link lineError Error
highlight link usageParens Special
highlight link usageSpecial Number
highlight link usageArg Keyword
highlight link usageVar Keyword

let b:current_syntax = 'usage'
