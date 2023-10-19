#!/usr/bin/env coffee

> ~/lib/LANG.js:LANG_LI
  ./index.js > set

s = new Set
for [code] from LANG_LI
  s.add code

{LANG} = localStorage
if not s.has LANG
  for i from navigator.languages
    if s.has i
      LANG = i
      break
    l = i.slice(0,i.indexOf('-'))
    if s.has l
      LANG = l
      break
  if not LANG
    LANG = 'en'
set LANG
export default LANG
