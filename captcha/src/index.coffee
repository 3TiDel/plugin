> @8p/box:Box
  ./Captcha.svelte
  ~/lib/S.js

+ NOW

< new Proxy(
  {}
  get:(_,name)=>
    (body, bin)=>
      if NOW
        if bin
          NOW[0].set bin
        return NOW[1]
      p = new Promise (resolve, reject)=>
        box = Box ""
        + err
        box.onclose = =>
          NOW = undefined
          reject err
          return
        props = {
          req:(captcha)=>
            resolve await S[name](
              body
              headers:{
                'Content-Type':JSON.stringify(
                  captcha
                )
              }
            )
            box.close()
            return
          reject:(_err)=>
            err = _err
            box.close()
            return
        }
        if bin
          props.bin = bin
        NOW = [
          new Captcha {
            target: box
            props
          }
        ]
        return
      NOW.push p
      return p
)
