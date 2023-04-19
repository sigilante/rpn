/+  default-agent, dbug, shoe, sole
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  %0
+$  card  card:agent:shoe
+$  command  @t
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
%-  (agent:shoe command)
^-  (shoe:shoe command)
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
++  on-poke   on-poke:default
++  on-peek   on-peek:default
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
++  command-parser
  |=  =sole-id:shoe
  ^+  |~(nail *(like [? command]))
  (stag & (boss 256 (more gon qit)))
++  on-command
  |=  [=sole-id:shoe =command]
  ^-  (quip card _this)
  :_  this
  ^-  (list card)
  :~  :+  %shoe  ~
  ^-  shoe-effect:shoe
  :-  %sole
  ^-  sole-effect:sole  :-  %klr
  ^-  styx
  =/  idx  0
  =|  fx=styx
  =/  rng  ~(. og eny:bowl)
  |-
  ?:  =(80 idx)  fx
  =^  huer  rng  (rads:rng 256)
  =^  hueg  rng  (rads:rng 256)
  =^  hueb  rng  (rads:rng 256)
  %=  $
    idx  +(idx)
    fx   `styx`(weld fx `styx`~[[[`%br ~ `[r=`@ux`huer g=`@ux`hueg b=`@ux`hueb]] command ~]])
  ==  ==
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

