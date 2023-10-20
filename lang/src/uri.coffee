> ./index.js > onSet
  @w5/utf8/utf8d.js


< (req)=>
  HOOK = new Set

  + args
  onSet (lang)=>

    li = []
    bin = await req(lang)
    start = 0
    for i,p in bin
      if i == 0
        li.push utf8d bin.subarray start, p
        start = p + 1

    args = [
      lang
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

