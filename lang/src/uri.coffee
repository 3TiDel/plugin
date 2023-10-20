> ./index.js > onSet
  @w5/utf8/utf8d.js

< (req)=>
  HOOK = new Set

  + args
  onSet (lang)=>

    li = []
    bin = await req(lang)
    start = 0
    p = 0
    len = bin.length
    while p <= len # <= 保证最后一个也会处理
      i = bin[p]
      if not i
        li.push utf8d bin.subarray start, p
        start = p + 1
      ++p

    args = [
      lang
      li
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

