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

This plug-in is very much inspired by
<http://github.com/Twinside/vim-haskellConceal>
