import times

import media
import account
import emoji
import preview_card
import poll

type
  Mention* = ref object of RootObj
    id*: string
    username*: string
    url*: string
    account*: Account

type
  Tag* = ref object of RootObj
    id*: string
    url*: string

type
  Status* = ref object of RootObj
    id*: string
    created_at*: DateTime
    in_reply_to_id*: string
    in_reply_to_account_id*: string
    sensitive*: bool
    spoiler_text*: string
    visibility*: string
    language*: string
    uri*: string
    url*: string
    replies_count*: int64
    reblogs_count*: int64
    favourites_count*: int64
    favourited*: bool
    reblogged*: bool
    muted*: bool
    bookmarked*: bool
    content*: string
    reblog*: Status
    application*: string
    account*: Account
    media_attachments*: seq[Media]
    mentions*: seq[Mention]
    tags*: seq[Tag]
    emojis*: seq[Emoji]
    card*: PreviewCard
    poll*: Poll

