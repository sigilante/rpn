/-  rpn
|%
++  num     royl-rs:so
++  op-add  lus
++  op-sub  hep
++  op-mul  tar
++  op-div  fas
++  op-sho  dot
++  op-all  (jest '..')
++  ops     ;~(pose op-add op-sub op-mul op-div op-sho op-all)
++  process
  |=  stack=(list command:rpn)
  ^-  (list command:rpn)
  ~|  "Failure processing operation on stack {<stack>}"
  ?~  stack  !!
  ?-    `command:rpn`(snag 0 (flop stack))
      %'+'
    =/  augend        `@rs`(snag 1 (flop stack))
    =/  addend        `@rs`(snag 2 (flop stack))
    (flop (weld ~[(add:rs augend addend)] (slag 3 (flop stack))))
    ::
      %'-'
    =/  minuend       `@rs`(snag 1 (flop stack))
    =/  subtrahend    `@rs`(snag 2 (flop stack))
    (flop (weld ~[(sub:rs minuend subtrahend)] (slag 3 (flop stack))))
    ::
      %'*'
    =/  multiplicand  `@rs`(snag 1 (flop stack))
    =/  multiplier    `@rs`(snag 2 (flop stack))
    (flop (weld ~[(mul:rs multiplicand multiplier)] (slag 3 (flop stack))))
    ::
      %'/'
    =/  numerator     `@rs`(snag 1 (flop stack))
    =/  denominator   `@rs`(snag 2 (flop stack))
    (flop (weld ~[(div:rs numerator denominator)] (slag 3 (flop stack))))
    ::
      %'.'
    ~&  >  "{<(snag 0 (flop stack))>}"
    stack
    ::
      %'..'
    ~&  >  "{<stack>}"
    stack
    ::
      @rs
    stack
  ==
--
