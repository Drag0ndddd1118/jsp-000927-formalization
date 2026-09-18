import Erdos1116

/-- Lean 4 formalization bridge for JSP-000927 (Erdős Problem 1116).
Erdős asked whether a meromorphic function can have arbitrarily extreme ratios
between its root counts n(r, a) and n(r, b) for two distinct values a ≠ b.
A. A. Gol'dberg (1978) and Sakari Toppila (1976) proved that such functions exist,
even in the class of entire functions. -/
theorem jsp_000927_solved :
    ∃ f : ℂ → ℂ, Differentiable ℂ f ∧
      ∀ a b : ℂ, a ≠ b → Erdos1116.UnboundedCountRatio f a b :=
  Erdos1116.erdos_1116

#print axioms jsp_000927_solved
-- 'jsp_000927_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
