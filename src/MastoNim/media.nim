type
  Media* = ref object of RootObj
    id*: string
    media_type*: string
    url*: string
    preview_url*: string
    remote_url*: string
    meta*: string
    description*: string
    blurhash*: string