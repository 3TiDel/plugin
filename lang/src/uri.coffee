> ~/lib/fBinJs.js
  ./index.js > onSet

HOOK = new Set

< (req)=>
  + lang_li
  onSet (lang)=>
    lang_li = await req(lang)
    for f from HOOK
      f.call lang, lang_li
    return
  (f)=>
    HOOK.add f
    if lang_li
      f.call lang, lang_li
    =>
      HOOK.delete f
      return

