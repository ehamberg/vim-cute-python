# conceal test -- lines should match

"""
if a is not None: pass """
if a is not None: pass

"""
if b is None: pass """
if b is None: pass

"""
if 3 ∈ [1,2,3]: pass """
if 3 in [1,2,3]: pass

"""
if 4 ∉ [1,2,3]: pass """
if 4 not in [1,2,3]: pass

"""
if a ≡ b: pass """
if a == b: pass

"""
√(7) """
sqrt(7)

"""
π """
pi

"""
map (λ x: x, [1,2,3]) """
map (lambda x: x, [1,2,3])

"""
a ∧ b """
a and b

"""
a ∨ b """
a or b

"""
∑([1,2,3]) """
sum([1,2,3])

"""
if a ≢ b: pass """
if a != b: pass

"""
if a ≥ b: pass """
if a >= b: pass

"""
if a ≤ b: pass """
if a <= b: pass

"""
if e ∈ [1,2,3] ∧ ¬a: """
if e in [1,2,3] and not a:
