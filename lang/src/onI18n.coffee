> ./uri.js
  ~/lib/fLang.js
  ~/lib/LANG.js:@ > HASH

export default uri (lang)=>
  now = 0
  for [i],p in LANG
    if i == lang
      now = p
      break

  fLang(
    HASH[now]
  )
