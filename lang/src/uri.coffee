> ~/lib/fBinJs.js
  ./index.js > onSet

HOOK = new Set

< (req)=>
  + i18n
  onSet (lang)=>
    i18n = await req(lang)
    for f from HOOK
      f.call lang, i18n
    return
  (f)=>
    HOOK.add f
    if i18n
      f.call lang, i18n
    =>
      HOOK.delete f
      return

