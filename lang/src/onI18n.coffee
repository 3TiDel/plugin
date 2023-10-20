> ./uri.js
  ~/lib/fI18n.js
  ~/lib/fBinMd.js
  ~/lib/LANG.js
  @8n/bintxt
  @w5/msgpack > unpack

export default uri (lang)=>
  [li,dict] = await Promise.all [
    fI18n(
      LANG[lang]
    )
    fBinMd(lang+'/_')
  ]

  [
    Object.assign(
      bintxt li
      unpack dict
    )
  ]
