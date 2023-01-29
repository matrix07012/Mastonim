import times

import emoji

type
  Role = ref object of RootObj
    id: int64
    name: string
    color: string
    position: int64
    permissions: int64
    highlighted: bool
    created_at: DateTime
    updated_at: DateTime

type
  Field = ref object of RootObj
    name: string
    value: string
    verified_at: DateTime

type
  CredentialAccount* = ref object of RootObj
    privacy*: string
    sensitive*: string
    language*: string
    note*: string
    fields*: seq[Field]
    follow_requests_count*: int64

type
  Account* = ref object of RootObj
    id*: string
    username*: string
    acct*: string
    display_name*: string
    locked*: bool
    bot*: bool
    group*: bool
    discoverable*: bool
    noindex*: bool
    moved*: bool
    suspended*: bool
    limited*: bool
    created_at*: DateTime
    note*: string
    url*: string
    avatar*: string
    avatar_static*: string
    header*: string
    header_static*: string
    followers_count*: int64
    following_count*: int64
    statuses_count*: int64
    last_status_at*: DateTime
    emojis*: seq[Emoji]
    fields*: seq[Field]
    role*: Role
    mute_expires_at*: DateTime
    source*: CredentialAccount