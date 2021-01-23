# SICP
Scheme programs from [the Wizard Book](https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs).

Use `$ gsi file.scm`.

# Notes
## Chapter 1
- *normal-order evaluation* = fully-expand and then reduce
- *applicative-order evaluation* = evaluate the arguments and then apply; more efficient
- math: usually *declarative* descriptions (what is); computer science:
*imperative* descriptions (how to)
- a formal parameter is a *bound variable*; if not bound, it's a *free variable*.  You can rename bound variables in a procedure without changing its meaning, but free variables matter.
- definitions can be nested = *block structure*