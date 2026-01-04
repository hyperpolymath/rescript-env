;; SPDX-License-Identifier: AGPL-3.0-or-later
;; META.scm - Meta-level information for rescript-env
;; Media-Type: application/meta+scheme

(meta
  (architecture-decisions
    ((id "ADR-001")
     (title "Runtime Detection via globalThis")
     (status "accepted")
     (context "Need to support both Deno and Node.js without bundler configuration")
     (decision "Check globalThis.Deno and globalThis.process at runtime")
     (consequences ("Zero configuration required"
                    "Small runtime overhead"
                    "Works in all environments")))

    ((id "ADR-002")
     (title "Option Types for Missing Values")
     (status "accepted")
     (context "Environment variables may not be set")
     (decision "Return option<string> from get, provide getExn for required values")
     (consequences ("Type-safe handling of missing values"
                    "Explicit error handling required"
                    "Matches ReScript idioms")))

    ((id "ADR-003")
     (title "ESM-only Output")
     (status "accepted")
     (context "Deno requires ESM, modern Node.js supports it")
     (decision "Configure ReScript to output ESM only with .res.js suffix")
     (consequences ("Native Deno compatibility"
                    "Modern Node.js compatible"
                    "May need wrapper for older Node.js")))

    ((id "ADR-004")
     (title "Boolean Parsing Values")
     (status "accepted")
     (context "No standard for boolean env vars")
     (decision "Accept true/false/1/0/yes/no/on/off (case-insensitive)")
     (consequences ("Flexible input handling"
                    "Matches common conventions"
                    "Clear documentation needed"))))

  (development-practices
    (code-style
      ((language "ReScript")
       (uncurried true)
       (open-module "RescriptCore")))
    (security
      (principle "Defense in depth")
      (practices ("No eval of env values"
                  "Type validation on coercion"
                  "Exception for missing required values")))
    (testing
      (framework "Deno test")
      (coverage-target 90))
    (versioning "SemVer")
    (documentation "AsciiDoc")
    (branching "main for stable"))

  (design-rationale
    ((principle "Type Safety First")
     (explanation "All functions return properly typed values, no stringly-typed APIs"))
    ((principle "Zero Configuration")
     (explanation "Works out of the box with any JS runtime, no setup needed"))
    ((principle "Fail Fast")
     (explanation "getExn throws immediately on missing required values"))
    ((principle "Deno First")
     (explanation "Primary target is Deno, Node.js supported for compatibility"))))
