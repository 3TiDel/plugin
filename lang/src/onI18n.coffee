> ./uri.js
  ~/lib/fI18n.js
  ~/lib/LANG.js:@ > HASH

export default uri (lang)=>
  now = 0
  for [i],p in LANG
    if i == lang
      now = p
      break
  fI18n(
    HASH[now]
  )
