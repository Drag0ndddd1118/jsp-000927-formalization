# Formalization of JSP-000927 (Erdős Problem #1116)

## Problem Overview

**Catalog ID:** [JSP-000927](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0901-1000.md#JSP-000927)  
**Erdős Problem:** [#1116](https://www.erdosproblems.com/1116)  
**Mathematical Area:** Complex analysis / Value distribution theory  

### Problem Statement

Under the stated conditions, can a meromorphic function's counts of taking two distinct values have arbitrarily extreme ratios?
For a meromorphic function $f$, let $n(r, a)$ count the number of roots of $f(z) = a$ in the disc $|z| < r$. Erdős asked whether there exists a meromorphic function $f$ such that for every pair of distinct complex values $a \ne b$,
$$\limsup_{r \to \infty} \frac{n(r, a)}{n(r, b)} = \infty.$$

### Resolution

Affirmatively resolved by A. A. Gol'dberg (1978) and Sakari Toppila (1976), who constructed such functions in the class of entire functions.

## Formalization Details

- **Bridge File:** `JSP_000927.lean`
- **Main Module:** `Erdos1116.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000927_solved :
      ∃ f : ℂ → ℂ, Differentiable ℂ f ∧
        ∀ a b : ℂ, a ≠ b → Erdos1116.UnboundedCountRatio f a b :=
    Erdos1116.erdos_1116
  ```
- **Axioms Check:**
  `#print axioms jsp_000927_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** A. A. Gol'dberg (1978) and Sakari Toppila (1976).
- **Formal Authors:** Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs`.
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
