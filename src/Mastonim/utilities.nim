import jsony
import times

import media
import preview_card


proc parseHook*(s: string, i: var int, v: var DateTime) =
  var str: string
  parseHook(s, i, str)
  v = parse(str, "yyyy-MM-dd'T'hh:mm:ss'.'fffzzz", utc())


proc renameHook*(v: var Media, fieldName: var string) =
  if fieldName == "type":
    fieldName = "media_type"

proc renameHook*(v: var PreviewCard, fieldName: var string) =
  if fieldName == "type":
    fieldName = "card_type"


proc dumpHook*(s: var string, v: DateTime) =
  s.add '"'
  s.add $v
  s.add '"'