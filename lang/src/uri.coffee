> ./index.js > onSet
  ~/lib/fBinMd.js
  @w5/msgpack > unpack

_hook = new Set

< (uri)=>
  + pre
  onSet (lang)=>
    o = unpack await fBinMd(lang+'/'+uri)
    pre = [lang,o]
    _hook.forEach (f)=>
      try
        f.apply lang, o
      catch err
        console.error err
      return
    return
  (f)=>
    _hook.add f
    if pre
      f.apply ...pre
    =>
      _hook.delete f
      return

