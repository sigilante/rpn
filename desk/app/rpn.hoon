/-  rpn
/+  default-agent, dbug, *rpn, shoe
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0
  $:  %0
      stack=(list ?(@rs op:rpn))
  ==
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
%-  (agent:shoe command:rpn)
^-  (shoe:shoe command:rpn)
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
    leather  ~(. (default:shoe this command:rpn) bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  (quip card _this)
  `this(state !<(state-0 old))
++  on-poke   on-poke:default
++  on-peek   on-peek:default
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
++  command-parser
  |=  =sole-id:shoe
  ^+  |~(nail *(like [? command:rpn]))
  %+  stag  |
  (pose num:rpn ops:rpn)
++  on-command
  |=  [=sole-id:shoe =command:rpn]
  ^-  (quip card _this)
  =/  old-stack  (weld stack ~[command])
  =/  new-stack  (process old-stack)
  :_  this(stack new-stack)
  :~  [%shoe ~ sole+[%klr [[`%br ~ `%g] [(crip "{<old-stack>} →")]~]~]]
      [%shoe ~ sole+[%klr [[`%br ~ `%g] [(crip "{<new-stack>}")]~]~]]
  ==
++  can-connect
  |=  =sole-id:shoe
  ^-  ?
  ?|  =(~zod src.bowl)
      (team:title [our src]:bowl)
  ==
++  on-connect     on-connect:leather
++  on-disconnect  on-disconnect:leather
++  tab-list       tab-list:leather
--
