# Description:
#   env

class env
  # https://slack.com/api/users.list?token=xxxx
  @USER: "U7LMRS8QP"
  @ANIMEFILE: "/var/www/html/data/anime.json"
  @COORDINATES: {\
    "愛知": "137.391528,34.769167"
  }
  #@RAINFALL_NOTIFY_THRESHOLD: 2.0

  # unit is minutes (from 1 to 60)
  @ANIME_NOTIFY_INTERVAL: 5
  @ANIME_NOTIFY_TIMING: 10

  @WEATHER_NOTIFY_INTERVAL: 10
  
  @ENABLE_SHELL: false

  @TANK: [\
    "巡航戦車A41センチュリオン",
    "M26パーシング重戦車",
    "M24チャーフィー軽戦車",
    "T28重戦車",
    "カール自走臼砲",
    "BT-42突撃砲",
    "九七式中戦車（旧砲塔）",
    "九七式中戦車（新砲塔）",
    "九五式軽戦車",
    "クルセイダーMk.Ⅲ",
    "Ⅱ号戦車F型",
    "C-5M",
    "Ⅳ号戦車Ｄ型(あんこうチーム)",
    "Ⅳ号戦車D型改(F2型仕様)",
    "Ⅳ号戦車H型(D型改造)",
    "38(t)戦車B/C型(カメさんチーム)",
    "ヘッツァー仕様(38(t)改)(カメさんチーム)",
    "八九式中戦車甲型(アヒルさんチーム)",
    "Ⅲ号突撃砲F型(カバさんチーム)",
    "M3中戦車リー(ウサギさんチーム)",
    "B1bis(カモさんチーム)",
    "三式中戦車(チヌ)(アリクイさんチーム)",
    "ポルシェティーガー VK4501(P)",
    "10式戦車",
    "チャーチル歩兵戦車 Mk.VII",
    "マチルダII 歩兵戦車 Mk.III／IV",
    "M4シャーマン 75mm砲搭載型",
    "M4A1シャーマン 76mm砲搭載型",
    "シャーマン･ファイアフライ",
    "CV33型快速戦車（L3/33）",
    "M41型セモヴェンテ（自走砲）",
    "P40型重戦車",
    "T-34/76",
    "T-34/85",
    "KV-2",
    "IS-2",
    "ティーガーⅠ",
    "ティーガーⅡ",
    "パンターG型",
    "Ⅲ号戦車J型",
    "Ⅳ号駆逐戦車/70(V)ラング",
    "駆逐戦車ヤークトパンター",
    "駆逐戦車ヤークトティーガー",
    "重駆逐戦車エレファント",
    "超重戦車マウス",
    ]
  @FUN: [ \
    "ヒヤッホォォォウ！最高だぜぇぇぇぇ！！",
    "出撃ですー!",
    "うふふふへへへ",
    "うへへっ", 
    "これが幸せというものです", 
    "戦車とは違った機能美を感じます！"
    ]

  @SAD: [ \
    "危機的状況です...",
    "えぐっえぐっ..ぅぇぇ.."
    ]

  @random: (array) ->
    return array[Math.floor(Math.random() * array.length)]

module.exports=env

