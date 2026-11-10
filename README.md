# Advanced Programming - Exam Repository

This repository is your answer sheet for the Advanced Programming (AProg) exam. You write your answers here, in `responses.md` and in a few code files. The exam paper only says *what* to do, this file says *how* and *where*.

Read the whole file before the exam starts.

## Rules

You may use:

- the course slides
- the online Rust documentation
- your personal notes
- `cargo`, `rustc`, `rustfmt` and `clippy`
- the editor autocomplete of your language server (traditional autocomplete)

You must not:

- use any AI, online or local (chat, agents, code generation, AI search, ...)
- communicate with anyone, in any way (chat, mail, phone, shared documents, ...)
- use the internet, except for what was speficifally allowed and to push at the end
- look at the work of another student or let another student look at yours
- copy code from the internet or from a repository that is not yours

A violation is handled as cheating. If you are not sure whether something is allowed, ask the supervisor *before* you do it.

## Setup of the editor

### Zed

Only traditional autocomplete is allowed. Everything else is off: Copilot, Zeta / edit predictions, the agent panel, inline assist, and every other AI feature.

The file `.zed/settings.json` of this repository already turns them off. Before you start, check it yourself:

1. Open `Zed > Settings` and look for "AI". All AI features must be off.
2. The agent panel must not open, and no edit prediction may appear while you type.
3. Autocomplete from `rust-analyzer` (method names, types, ...) stays on.

If anything AI related is still active, switch it off in your user settings and tell the supervisor.

### Other editors

Allowed only if the supervisor agreed beforehand, with all AI plugins removed or disabled.

## Repository layout

```text
.
|- README.md          these rules (do not edit)
|- responses.md       your written answers
|- ex1/ ... ex5/      your code and other files, one folder per exercise
`- .zed/settings.json editor settings (do not edit)
```

Answer in `responses.md` when the exercise asks for text, an explanation, a trace, an output or a table. Put code in the folder of the exercise when the exercise asks you to write or run code.

You do not need to fill in everything. Only the parts that the exam paper asks for. Leave the rest of the sections empty.

## Where to put what

### Text answers

Write them under the heading of the exercise and the part in `responses.md` (for example `## Exercise 3` and `### c)`). Do not rename or remove the headings.

Use a fenced code block for code and outputs:

````markdown
```rust
let x = 5;
```
````

### Code files

If the exam paper does not name a file, use these names. If it does, the exam paper wins.

| What | Where |
|------|-------|
| Code of exercise `N` (one program) | `exN/main.rs` |
| Separate code per part | `exN/a.rs`, `exN/b.rs`, ... (the letter of the part) |
| Rust project (only if asked) | `exN/` as a cargo project (`cargo new` inside `exN/`) |
| Diagram source (PlantUML) | `exN/diagram.puml` |
| Other files | `exN/` with a short, lowercase name, no spaces |

Rules for the files:

- One folder per exercise (create `ex6/` if the exam has a sixth). Never put exercise files at the top level.
- Your code must compile. A part that does not compile gets few points. If you cannot finish it, comment the broken part out and say so in `responses.md`.
- Compile with `rustc exN/main.rs -o /tmp/exN` or `cargo run`, and format with `rustfmt`.
- Comment your code so that its purpose and structure are clear.
- Do not commit build output (`target/`, binaries). `.gitignore` covers the usual ones.

### Hand drawn answers

If the exam paper asks for a drawing and you draw it on paper, hand in the paper. Write "see paper" in `responses.md`.

## Workflow

1. Clone this repository (or use the copy the supervisor gives you).
2. Write your name and student number at the top of `responses.md`.
3. Work through the exercises. Commit regularly (at least after each exercise):

   ```bash
   git add -A
   git commit -m "ex2: done"
   ```

4. At the end, check that `git status` is clean, then submit as announced by the supervisor (push to the exam remote, or hand in the repository). Work that is not committed is not graded.

Do not rewrite history (`git rebase`, `git push --force`) and do not delete the repository.

## Grading

Only the content of the last commit before the end of the exam counts. Points are given per exercise as printed on the exam paper.
