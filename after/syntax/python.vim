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
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≠

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax keyword pyNiceStatement lambda conceal cchar=λ

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=2
