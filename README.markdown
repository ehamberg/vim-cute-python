This syntax file displays unicode characters for some Python operators and
built-in functions, turning the following:

```python
    map (lambda x: x, [1,2,3])

    def foo(e, a):
        if e in [1,2,3] and not a:
            return math.sqrt(math.pi)
        else:
            return sum([1,2,3])
```

into

```python
    map (λ x: x, [1,2,3])

    def foo(e, a):
        if e ∈ [1,2,3] ∧ ¬a:
            return √(π)
        else:
            return ∑([1,2,3])
```

Screenshot:

<img src="http://hamberg.no/erlend/files/cute_python.png" title="Screenshot" />

*This does not – at any point – alter your source code*. It simply uses Vim's
"conceal" feature to “hide” `in` behind `∈`, etc. Whenever the cursor is at
a line with concealed text, the text will be expanded.

To install, simply put `python.vim` in `~/.vim/after/syntax` or use something
like [Pathogen](https://github.com/tpope/vim-pathogen) (recommended).

Vim ≥ 7.3 is required.

The branch `moresymbols` includes commits from various people that add even more
conceal replacements. I try to maintain a healthy balance in the `master`
branch, but if you like to conceal even more operators or don't mind slight
inaccuracies in what mathematical symbols are used to represent, you should have
a look at the extra symbols in the `moresymbols` branch.

This plug-in is very much inspired by
<http://github.com/Twinside/vim-haskellConceal>
