" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax keyword pythonOperator is

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”
syntax match pyNiceOperator "\<not\%( \|\>\)" conceal cchar=¬
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
syntax match pyNiceOperator "==" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≠
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉

syntax match pyNiceOperator " \* " conceal cchar=∙
syntax match pyNiceOperator " / " conceal cchar=÷
" The following are special cases where it /may/ be okay to ignore PEP8
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ

syntax match pyNiceOperator "\<\%(math\.\|\)sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\|\)pi\>" conceal cchar=π
syntax match pyNiceOperator "\<\%(math\.\|\)ceil\>" conceal cchar=⌈
syntax match pyNiceOperator "\<\%(math\.\|\)floor\>" conceal cchar=⌊

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax keyword pyNiceBuiltin all conceal cchar=∀
syntax keyword pyNiceBuiltin any conceal cchar=∃
" Your background, and taste, may affect whether you like # for cardinality ;)
syntax keyword pyNiceBuiltin len conceal cchar=#

syntax keyword pyNiceStatement lambda conceal cchar=λ
syntax keyword pyNiceStatement None conceal cchar=∅

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNiceBuiltin Builtin
hi! link Conceal Operator

setlocal conceallevel=2
