# Formalization of JSP-000927 (Erdős Problem #1116)

## Problem Overview

**Catalog ID:** [JSP-000927](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0901-1000.md#JSP-000927)  
**Erdős Problem:** [#1116](https://www.erdosproblems.com/1116)  
**Mathematical Area:** Complex Analysis / Value Distribution Theory  

### Problem Statement

Under the stated conditions, can a meromorphic function's counts of taking two distinct values have arbitrarily extreme ratios?
For a meromorphic function $f$, let $n(r, a)$ count the number of roots of $f(z) = a$ in the disc $|z| < r$. Erdős asked whether there exists a meromorphic function $f$ such that for every pair of distinct complex values $a \ne b$,
$$\limsup_{r \to \infty} \frac{n(r, a)}{n(r, b)} = \infty.$$

### Resolution

Affirmatively resolved by A. A. Gol'dberg (1978) and Sakari Toppila (1976), who constructed such functions in the class of entire functions.

## Formalization Details

- **Contract Statement:** `Challenge.lean` defines `JSP000927.jsp000927Statement`
- **Solution Theorem:** `Submission.lean` proves `JSP000927.jsp_000927_solved : jsp000927Statement`
- **Underlying Formalization:** `Erdos1116.lean` provides complete, fully closed proofs.
- **Axioms Check:**
  `#print axioms JSP000927.jsp_000927_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

```bash
lake exe cache get
lake build
python3 check.py
```
