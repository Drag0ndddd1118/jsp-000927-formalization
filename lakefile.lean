import Lake
open Lake DSL

package "jsp-000927-formalization" where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos1116 where
  roots := #[`Erdos1116]

@[default_target]
lean_lib JSP_000927 where
  roots := #[`JSP_000927]
