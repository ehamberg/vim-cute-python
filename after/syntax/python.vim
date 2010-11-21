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
syntax match pyNiceOperator "\<not\>" conceal cchar=¬
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
syntax match pyNiceOperator "==" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≠
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉

syntax keyword pyNiceStatement lambda conceal cchar=λ

syntax keyword pyNiceRepeat for conceal cchar=∀

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceRepeat Repeat
hi! link Conceal Operator

set conceallevel=2
