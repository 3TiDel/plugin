> ./index.js > onSet
  @w5/utf8/utf8d.js

< (req)=>
  HOOK = new Set

  + args
  onSet (lang)=>
    args = await req(lang)
    for f from HOOK
      f.call ...args
    return
  (f)=>
    HOOK.add f
    if args
      f.call ...args
    =>
      HOOK.delete f
      return

