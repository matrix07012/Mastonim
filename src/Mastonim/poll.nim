import times

import emoji

type
  Option* = ref object of RootObj
    title*: string
    votes_count*: int64

type
  Poll* = ref object of RootObj
    id*: string
    expires_at*: DateTime
    expired*: bool
    multiple*: bool
    votes_count*: int64
    voters_count*: int64
    options*: seq[Option]
    emojis*: seq[Emoji]
    voted*: bool
    own_votes*: seq[int64]