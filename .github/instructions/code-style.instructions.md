---
name: 'Code Style'
description: 'Global coding standards applied to all files'
applyTo: '**'
---

# Code Style

- No comments or docstrings
- Always typed — all function signatures, variables where non-obvious
- Fix all type errors before finishing
- Clean, minimal code — no dead code, no redundant imports
- Don't create unnecessary functions — inline short logic
- No asserts — use if-guards instead
- Prefer early returns over deep nesting
- Avoid nested for loops — flatten with comprehensions, `itertools.product`, or extract helpers
- Always put imports at the top of the file
- One variable assignment per line — no multiple assignments like `a, b = x, y` (tuple unpacking is ok)
- Never cast or annotate types unnecessarily — don't add `: Type` or wrapping casts when the type is already correct or inferable
- Python: run `ruff format` and `ruff check` on changed files; fix all pyrefly errors before finishing
- Commit message titles under 50 characters, using conventional commits (feat:, fix:, refactor:, docs:, test:, chore:)

# Testing

- Always add tests for new code
- Only high-value tests — no more than needed, no redundant coverage
- Prefer parametrized tests over duplicated test functions
