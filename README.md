## Getting started

1. Start SWI Prolog
2. `consult(path_to_file)`

## Syntax

- `;` -> or
- `,` -> and
- `.` -> end statement
- `X #= Y` -> tests equality
- `x` -> atom
- `X` -> variable
- `f(X)` -> fact
- `:- use_module(library(clpfd)).` -> use the clpfd library
- `[A, B] ins 0..7` -> `A` and `B` are between 0 and 7, inclusive (imported from `clpfd`)
- `f(X):- g(X).` -> defines rule
- `=:=` -> equals for integers
- `=\=` -> not equals for integers
- `==` -> equals
- `\==` -> not equals
