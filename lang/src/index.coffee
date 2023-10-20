htm = document.documentElement

HOOK = new Set

< =>
  htm.lang

< set = (l)=>
  htm.lang = l
  Promise.allSettled [...HOOK].map (f)=>
    f l

< onSet = (f)=>
  HOOK.add f
  {lang} = htm
  if lang
    f lang
  =>
    HOOK.delete f
    return

