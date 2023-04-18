/-  rpn
|%
++  num     royl-rs:so
++  op-add  (cook |=(p=@ ?:(=('+' p) op+%add ~)) lus)
++  op-sub  (cook |=(p=@ ?:(=('-' p) op+%sub ~)) hep)
++  op-mul  (cook |=(p=@ ?:(=('*' p) op+%mul ~)) tar)
++  op-div  (cook |=(p=@ ?:(=('/' p) op+%div ~)) fas)
++  op-sho  (cook |=(p=@ ?:(=('.' p) op+%sho ~)) dot)
++  op-all  (cook |=(p=@ ?:(=('..' p) op+%all ~)) (jest '..'))
++  ops     ;~(pose op-add op-sub op-mul op-div op-sho op-all)
++  process
  |=  stack=(list command:rpn)
  ^-  (list command:rpn)
  ~|  "Failure processing operation on stack {<stack>}"
  ?~  stack  !!
  ?-    `command:rpn`(snag 0 (flop stack))
      [%op %add]
    =/  augend        ;;(@rs `command:rpn`(snag 1 (flop stack)))
    =/  addend        ;;(@rs `command:rpn`(snag 2 (flop stack)))
    (flop (weld ~[(add:rs augend addend)] (slag 3 (flop stack))))
    ::
      [%op %sub]
    =/  minuend       ;;(@rs `command:rpn`(snag 1 (flop stack)))
    =/  subtrahend    ;;(@rs `command:rpn`(snag 2 (flop stack)))
    (flop (weld ~[(sub:rs minuend subtrahend)] (slag 3 (flop stack))))
    ::
      [%op %mul]
    =/  multiplicand  ;;(@rs `command:rpn`(snag 1 (flop stack)))
    =/  multiplier    ;;(@rs `command:rpn`(snag 2 (flop stack)))
    (flop (weld ~[(mul:rs multiplicand multiplier)] (slag 3 (flop stack))))
    ::
      [%op %div]
    =/  numerator     ;;(@rs `command:rpn`(snag 1 (flop stack)))
    =/  denominator   ;;(@rs `command:rpn`(snag 2 (flop stack)))
    (flop (weld ~[(div:rs numerator denominator)] (slag 3 (flop stack))))
    ::
      [%op %sho]
    ~&  >  "{<(snag 1 (flop stack))>}"
    (flop (slag 1 (flop stack)))
    ::
      [%op %all]
    ~&  >  "{<stack>}"
    (flop (slag 1 (flop stack)))
    ::
      @rs
    stack
  ==
--
