# SICP
Scheme programs from [the Wizard Book](https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs).

Use `$ gsi file.scm` or `$ guile file.scm`.

# Notes
## Chapter 1
- *normal-order evaluation* = fully-expand and then reduce
- *applicative-order evaluation* = evaluate the arguments and then apply; more efficient
- math: usually *declarative* descriptions (what is); computer science:
*imperative* descriptions (how to)
- a formal parameter is a *bound variable*; if not bound, it's a *free variable*.  You can rename bound variables in a procedure without changing its meaning, but free variables matter.
- definitions can be nested = *block structure*
- a *tail-recursive* implementation (IEEE mandates that Scheme implementations be tail-recursive) means that it will execute an iterative process in constant space even if it's written as a recursive procedure (see iterative factorial in `alg.scm`) -- just a `jmp` instead of creating new call frames.
