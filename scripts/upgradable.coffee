# Description:
#   upgradable

fs = require 'fs'
chokidar = require 'chokidar'
env = require './env.coffee'

upgradable_out = 'out/upgradable'
latest="すべて最新です"
nupgradable="個のパッケージが更新できます"
lastupgradable=0

module.exports=(robot)->
  send = (r, text) ->
    unless r?
      robot.send({room:process.env.HUBOT_SLACK_USERID}, text)
    else
      r.send(text)

  robot.hear /(upgradable|更新)$/i, (r) ->
    ret = upgradable_item(r, "", false)
    if ret == 0
      r.send(all_ok + env.random(env.FUN))

  chokidar.watch(upgradable_out, { persistent: true }).on(
    'all', (event, path) =>
      upgradable(null, "", true)
    )

  upgradable = (r, sv, flag) ->
    f = fs.readFileSync(upgradable_out)
    length=0
    for line in (f + '').split("\n")
      if line != ""
        length += 1
    if length > 0 && lastupgradable != length
      send(r, length + nupgradable)
      lastupgradable=length
    return length

  upgradable_item = (r, sv, flag) ->
    f = fs.readFileSync(upgradable_out)
    length=0
    names=""
    for line in (f + '').split("\n")
      if line != ""
        length += 1
        if names!=""
          names+=", "
        names+=line
    if length > 0
      send(r, length + nupgradable + "\n" + names)
    else
      send(r, latest)
    return length

