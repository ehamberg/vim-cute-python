Use unicode characters for Python operators, turning the following:

    map (lambda x: x, [1,2,3])

    def foo(e, a):
        if e in [1,2,3]:
            if not a:
                return 3
        else:
            return 4

into

    map (λ x: x, [1,2,3])

    def foo(e, a):
        if e ∈ [1,2,3]:
            if ¬a:
                return 3
        else:
            return 4

Screenshot: <http://hamberg.no/erlend/files/cute_python.png>

*This does not – at any point — alter your source code*. It simply uses Vim's new
“conceal” feature to “hide” **in** behind **∈**, etc. Whenever the cursor is at
a line with concealed text, the text will be expanded.

To install, simply put python.vim in ~/.vim/after/syntax.

This is very much inspired by
<http://www.vim.org/scripts/script.php?script_id=3200>.
