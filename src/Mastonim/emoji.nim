type
  Emoji* = ref object of RootObj
    shortcode*: string
    url*: string
    static_url*: string
    visible_in_picker*: bool
    category*: string