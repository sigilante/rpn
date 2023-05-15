#   `%rpn`

Status:  Demo app, complete.

Reverse Polish Notation calculator for Urbit.  An App Workshop tutorial.

Supports numbers (as `@rs` single-precision floating-point values) and basic arithmetic operators `+`, `-`, `*`, `/`.  `.` to display top of stack.

```
> 50
~ →
~[.50]

> 25
~[.50] →
~[.50 .25]

> -
~[.50 .25] →
~[.-25]

> 5
~[.-25] →
~[.-25 .5]

> /
~[.-25 .5] →
~[.-0.19999999]

> 5
~[.-0.19999999] →
~[.-0.19999999 .5]

> *
~[.-0.19999999 .5] →
~[.-0.99999994]

> 1
~[.-0.99999994] →
~[.-0.99999994 .1]

> /
~[.-0.99999994 .1] →
~[.-1]
```

