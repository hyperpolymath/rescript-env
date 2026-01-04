# Contributing to rescript-env

Thank you for your interest in contributing to rescript-env! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Making Changes](#making-changes)
- [Pull Request Process](#pull-request-process)
- [Style Guide](#style-guide)
- [Reporting Issues](#reporting-issues)

## Code of Conduct

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## Getting Started

### Prerequisites

- [Deno](https://deno.land/) 1.40 or later
- [ReScript](https://rescript-lang.org/) 11 or later
- [just](https://just.systems/) command runner (optional but recommended)

### Clone the Repository

```bash
git clone https://github.com/hyperpolymath/rescript-env.git
cd rescript-env
```

## Development Setup

### Build the Project

```bash
# Using just (recommended)
just build

# Or using Deno directly
deno task build
```

### Watch Mode

```bash
just dev
# or
deno task dev
```

### Run Tests

```bash
just test
# or
deno test --allow-env tests/
```

### Project Structure

```
rescript-env/
├── src/
│   ├── Env.res          # Main implementation
│   └── Env.resi         # Public interface
├── tests/               # Test files (to be added)
├── deno.json            # Deno configuration
├── rescript.json        # ReScript configuration
├── justfile             # Task runner recipes
├── README.adoc          # Documentation
├── ROADMAP.adoc         # Future plans
└── CHANGELOG.adoc       # Version history
```

## Making Changes

### Branch Naming

Use descriptive branch names following this convention:

```
feat/add-schema-validation    # New features
fix/handle-empty-values       # Bug fixes
docs/update-api-reference     # Documentation
test/add-getint-tests         # Tests
refactor/simplify-runtime     # Code improvements
```

### Commit Messages

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `test`: Adding tests
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `style`: Formatting, missing semicolons, etc.
- `chore`: Maintenance tasks

Examples:
```
feat(api): add getList function for comma-separated values

fix(runtime): handle undefined process.env in browsers

docs(readme): add getBool examples
```

## Pull Request Process

1. **Fork the repository** and create your branch from `main`

2. **Make your changes** following the style guide

3. **Add tests** for any new functionality

4. **Update documentation** if needed (README.adoc, CHANGELOG.adoc)

5. **Run quality checks**:
   ```bash
   just quality
   ```

6. **Submit your PR** with:
   - Clear description of changes
   - Link to any related issues
   - Screenshots/examples if applicable

7. **Address review feedback** promptly

### PR Requirements

- [ ] Code builds without errors (`just build`)
- [ ] All tests pass (`just test`)
- [ ] No new linting warnings
- [ ] Documentation updated if needed
- [ ] CHANGELOG.adoc updated for user-facing changes

## Style Guide

### ReScript Style

- Use `@@uncurried` for all modules
- Prefer `option` types over nullable values
- Use pattern matching over if/else chains
- Keep functions small and focused
- Document public API with `/** */` comments

### Example

```rescript
/**
 * Get an environment variable as a list.
 * Splits on commas and trims whitespace.
 */
let getList = (name: string): option<array<string>> => {
  get(name)->Option.map(value => {
    value
    ->String.split(",")
    ->Array.map(String.trim)
  })
}
```

### File Organization

- One module per file
- Interface file (`.resi`) for all public modules
- Keep implementation private unless needed

## Reporting Issues

### Bug Reports

Use the [bug report template](.github/ISSUE_TEMPLATE/bug_report.md) and include:

- Clear, descriptive title
- ReScript and Deno versions
- Runtime (Deno/Node.js/Bun)
- Steps to reproduce
- Expected vs actual behaviour
- Minimal code example

### Feature Requests

Use the [feature request template](.github/ISSUE_TEMPLATE/feature_request.md) and include:

- Problem statement
- Proposed solution
- Alternatives considered
- Example usage

### Questions

For questions about usage, open a [discussion](https://github.com/hyperpolymath/rescript-env/discussions) rather than an issue.

## Licence

By contributing to rescript-env, you agree that your contributions will be licensed under the AGPL-3.0-or-later licence.

## Recognition

Contributors will be acknowledged in:
- The CHANGELOG for their specific contributions
- The repository's contributors list

Thank you for contributing! 🙏
