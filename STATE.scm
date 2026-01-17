;; SPDX-License-Identifier: PMPL-1.0
;; STATE.scm - Project state for rescript-env

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2024-06-01")
    (updated "2025-01-17")
    (project "rescript-env")
    (repo "hyperpolymath/rescript-env"))

  (project-context
    (name "ReScript Env")
    (tagline "Environment variable handling for ReScript with Deno runtime")
    (tech-stack ("rescript" "deno")))

  (current-position
    (phase "alpha")
    (overall-completion 40)
    (working-features
      ("Env var parsing"
       "Type-safe config"))))
