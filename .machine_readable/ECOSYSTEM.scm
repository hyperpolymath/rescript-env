;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - Ecosystem position for rescript-env
;; Media-Type: application/vnd.ecosystem+scm

(ecosystem
  (version "1.0")
  (name "rescript-env")
  (type "library")
  (purpose "Type-safe environment variable access for ReScript applications")

  (position-in-ecosystem
    (category "Configuration")
    (subcategory "Environment Variables")
    (unique-value
      ("First-class ReScript support"
       "Automatic Deno/Node.js detection"
       "Type coercion with validation"
       "Zero configuration required")))

  (related-projects
    ((name "rescript-full-stack")
     (relationship "parent-ecosystem")
     (url "https://github.com/hyperpolymath/rescript-full-stack")
     (description "ReScript Full Stack ecosystem orchestrator"))

    ((name "@rescript/core")
     (relationship "dependency")
     (url "https://github.com/rescript-association/rescript-core")
     (description "ReScript standard library"))

    ((name "dotenv")
     (relationship "prior-art")
     (url "https://github.com/motdotla/dotenv")
     (description "Node.js .env file loader - inspiration for future features"))

    ((name "envalid")
     (relationship "prior-art")
     (url "https://github.com/af/envalid")
     (description "TypeScript env validation - inspiration for schema features")))

  (what-this-is
    ("A ReScript library for environment variable access"
     "Runtime-agnostic (Deno, Node.js, Bun)"
     "Type-safe with option types"
     "Part of ReScript Full Stack ecosystem"
     "Zero-dependency (peer dep on @rescript/core)"
     "AGPL-3.0-or-later licensed"))

  (what-this-is-not
    ("Not a .env file parser (planned for v0.2.0)"
     "Not a secrets manager"
     "Not a configuration framework"
     "Not TypeScript (pure ReScript)"
     "Not a CLI tool")))
