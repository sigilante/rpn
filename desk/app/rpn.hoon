/-  rpn
/+  default-agent, dbug, rpn, shoe
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
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
    leather  ~(. (default:shoe this command) bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  (quip card _this)
  `this(state !<(state-0 old))
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  ?=(%charlie-action mark)
  =/  act  !<(action vase)
  ?-    -.act
      %push
    ?:  =(our.bowl target.act)
      `this(values [value.act values])
    ?>  =(our.bowl src.bowl)
    :_  this
    [%pass /pokes %agent [target.act %charlie] %poke mark vase]~
  ::
      %pop
    ?:  =(our.bowl target.act)
      `this(values ?~(values ~ t.values))
    ?>  =(our.bowl src.bowl)
    :_  this
    [%pass /pokes %agent [target.act %charlie] %poke mark vase]~
  ==
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?+  path  (on-peek:default path)
    [%x %values ~]  ``noun+!>(values)
  ==
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
++  command-parser
  |=  =sole-id:shoe
  ^+  |~(nail *(like [? command]))
  %+  stag  |
  (pose num:rpn ops:rpn)
++  on-command
  |=  [=sole-id:shoe =command]
  ^-  (quip card _this)
  =.  old-stack  (weld stack ~[command])
  =.  new-stack  (process:rpn old-stack)
  :_  this(stack new-stack)
  :~  [%shoe ~ shoe+[%klr [[`%br ~ `%g] [(crip "{<old-stack>} →")]~]~]]
      [%shoe ~ shoe+[%klr [[`%br ~ `%g] [(crip "{<new-stack>}")]~]~]]
  ==
++  can-connect
  |=  =sole-id
  ^-  ?
  ?|  =(~zod src.bowl)
      (team:title [our src]:bowl)
  ==
++  on-connect     on-connect:leather
++  on-disconnect  on-disconnect:leather
--
