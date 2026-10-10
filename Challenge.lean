import Erdos1116

namespace JSP000927

/--
Formal statement for JSP-000927 (Erdős Problem #1116):
Under the stated conditions, can a meromorphic function's counts of taking two distinct
values have arbitrarily extreme ratios?

Mathematical resolution: A. A. Gol'dberg (1978) and Sakari Toppila (1976) proved that such
functions exist, even in the class of entire functions.
-/
def jsp000927Statement : Prop :=
  ∃ f : ℂ → ℂ, Differentiable ℂ f ∧
    ∀ a b : ℂ, a ≠ b → Erdos1116.UnboundedCountRatio f a b

end JSP000927
