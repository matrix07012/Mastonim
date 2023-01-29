type
  PreviewCard* = ref object of RootObj
    url*: string
    title*: string
    description*: string
    card_type*: string
    author_name*: string
    author_url*: string
    provider_name*: string
    provider_url*: string
    html*: string
    width*: int64
    height*: int64
    image*: string
    embed_url*: string
    blurhash*: string