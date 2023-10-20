htm = document.documentElement

HOOK = new Set

< =>
  htm.lang

< set = (l)=>
  htm.lang = l
  Promise.allSettled [...HOOK].map (f)=>
    try
      await f l
    catch err
      console.error err
    return

< onSet = (f)=>
  HOOK.add f
  {lang} = htm
  if lang
    f lang
  =>
    HOOK.delete f
    return

