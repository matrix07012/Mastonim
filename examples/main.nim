import Mastonim/status
import Mastonim/account
import Mastonim/poll
import Mastonim/emoji
import Mastonim/media
import Mastonim/preview_card

import json
import times

var test = Status(content: "test")
#var test: Status
#echo test[]
var my = 6
var xd = "lol"
echo "yeet", my, xd

#echo test.repr

#echo test.created_at.year

#echo %*(test)

var time = parse("2022-09-08T22:48:07.983Z", "yyyy-MM-dd'T'hh:mm:ss'.'fffzzz", utc())
var time2 = parse("2019-07-15T18:29:57.191+00:00", "yyyy-MM-dd'T'hh:mm:ss'.'fffzzz", utc())

echo $time
echo $time2



var status_test = readFile("examples/status.json")
echo status_test
var status_obj = parse_status_json(status_test)
echo status_obj.repr
