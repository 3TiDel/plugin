> ~/lib/fBinJs.js
  ./index.js > onSet

HOOK = new Set

< (req)=>
  + args
  onSet (lang)=>
    args = [
      lang
      await req(lang)
    ]
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

