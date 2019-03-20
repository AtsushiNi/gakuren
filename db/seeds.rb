# 最新情報
path = "#{Rails.root}/public/uploads/seed/news/平成30年度関西学生新進テニストーナメント　予選ドロー2018-12-28/"
pdfFiles = [open(path + "MD.pdf"), open(path + "MS.pdf"), open(path + "WD.pdf"), open(path + "WS.pdf")]
News.create!(title: "平成30年度関西学生新進テニストーナメント　予選ドロー", pdfs: pdfFiles, visible: true)
5.times do |n|
  News.create!(title: ("titletitletitletitle" + n.to_s), visible: true)
end

# メンバー
Member.create(name: "外山　一光", email: "toyama@gmail.com", addmission_year: 2015, post: "元幹事長", college: "大阪大学", password: "toyama")
Member.create(name: "中澤　大輝", email: "nakazawa@gmail.com", addmission_year: 2016, post: "幹事長", college: "近畿大学", password: "nakazawa")
Member.create(name: "新濱　敦史", email: "atsushi-niihama@docomo.ne.jp", addmission_year: 2017, college: "京都大学", password: "atsushi")
Member.create(name: "藤本　達朗", email: "tatsurou@gmail.com", addmission_year: 2017, post: "レフェリー", college: "立命館大学", password: "tatsurou")
Member.create(name: "樋口　さち", email: "sati@gmail.com", addmission_year: 2018, college: "近畿大学", password: "sati")

# 大学アカウント
College.create(name: "近畿大学男子部", men: true, email: "kinki_men@gmail.com", league: 1, password: "kinki", players_num: 20, captain: "キャプテン", competent: "主務", prefecture: "大阪府")
College.create(name: "大阪体育大学男子部", men: true, email: "taidai_men@gmail.com", league: 2, password: "taidai", players_num: 35, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "大阪府")
College.create(name: "京都大学男子部", men: true, email: "kyoto_men@gmail.com", league: 2, password: "kyoto", players_num: 20, captain: "延澤　尚登", competent: "野末　由惟", prefecture: "京都府")
College.create(name: "京都産業大学男子部", men: true, email: "kyousan_men@gmail.com", league: 3, password: "kyousan", players_num: 27, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "天理大学男子部", men: true, email: "tenri_men@gmail.com", league: 4, password: "tenri", players_num: 10, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "奈良県")
College.create(name: "兵庫教育大学男子部", men: true, email: "hyoukyou_men@gmail.com", league: 5, password: "hyoukyou", players_num: 8, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "兵庫県")

College.create(name: "関西大学女子部", men: false, email: "kansai_women@gmail.com", league: 1, password: "kansai", players_num: 4, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "大阪府")
College.create(name: "同支社大学女子部", men: false, email: "dousisya_women@gmail.com", league: 2, password: "dousisya", players_num: 15, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "天理大学女子部", men: false, email: "tenri_women@gmail.com", league: 3, password: "tenri", players_num: 8, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "奈良県")
College.create(name: "神戸大学女子部", men: false, email: "koube_women@gmail.com", league: 4, password: "koube", players_num: 6, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "兵庫県")
College.create(name: "京都大学女子部", men: false, email: "kyouto_women@gmail.com", league: 5, password: "kyoto", players_num: 3, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "京都産業大学女子部", men: false, email: "kyousan_women@gmail.com", league: 5, password: "kyousan", players_num: 9, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
# 管理者アカウント
Root.create(name: "root", email: "gakuren@gmail.com", password: "gakuren")

# シングルス大会
tournament = SinglesTournament.create(name: "平成31年度春関男子シングルス", draw: 128, courts: "0102030405061011")

[0,15,16,31,32,47,48,52,55,56,59,63,64,68,71,72,75,79,80,82,83,84,87,88,91,92,93,95,96,98,99,100,103,104,107,108,109,111,112,114,115,116,119,120,123,124,125,127].map do |number|
  tournament.singles_players.create(name: "プレイヤー#{number + 1}", college: "大学#{number + 1}", number: number + 1)
end

tournament.singles_players.create(name: "栗山　拓也", college: "関学大", number: 3)
tournament.singles_players.create(name: "高橋　直種", college: "立命大", number: 4)
tournament.singles_players.create(name: "石川　希望", college: "神院大", number: 5)
tournament.singles_players.create(name: "大野　翼", college: "関　大", number: 8)
tournament.singles_players.create(name: "矢ノ川　歩", college: "近　大", number: 9)
tournament.singles_players.create(name: "高村　烈司", college: "関　大", number: 12)
tournament.singles_players.create(name: "大窪　広海", college: "同　大", number: 13)
tournament.singles_players.create(name: "高田　直幸", college: "関学大", number: 14)
tournament.singles_players.create(name: "清水　計都", college: "近　大", number: 19)
tournament.singles_players.create(name: "中川　雅之", college: "大教大", number: 20)
tournament.singles_players.create(name: "岡崎　大倭", college: "甲南大", number: 21)
tournament.singles_players.create(name: "岡田　大樹", college: "近　大", number: 24)
tournament.singles_players.create(name: "松本　樹", college: "近　大", number:  25)
tournament.singles_players.create(name: "小林　泰晴", college: "大体大", number: 28)
tournament.singles_players.create(name: "伊達　祐太朗", college: "同　大", number: 29)
tournament.singles_players.create(name: "石井　勇気", college: "近　大", number: 30)
tournament.singles_players.create(name: "安井　優貴", college: "立命大", number: 35)
tournament.singles_players.create(name: "矢野　駿太郎", college: "近　大", number: 36)
tournament.singles_players.create(name: "谷口　嘉志", college: "近　大", number: 37)
tournament.singles_players.create(name: "福嶋　航大", college: "甲南大", number: 40)
tournament.singles_players.create(name: "福本　定也", college: "神院大", number: 41)
tournament.singles_players.create(name: "石島　星歩", college: "同　大", number: 44)
tournament.singles_players.create(name: "岩村　優友", college: "甲南大", number: 45)
tournament.singles_players.create(name: "東川　将大", college: "甲南大", number: 46)
tournament.singles_players.create(name: "合田　健人", college: "近　大", number: 51)
tournament.singles_players.create(name: "山本　桐生", college: "関学大", number: 52)
tournament.singles_players.create(name: "曽川　大輔", college: "近　大", number: 61)
tournament.singles_players.create(name: "福永　太洋", college: "神　大", number: 62)
tournament.singles_players.create(name: "土田　啓太", college: "関学大", number: 67)
tournament.singles_players.create(name: "塩井　岳", college: "関　大", number: 68)
tournament.singles_players.create(name: "深井　圭", college: "関学大", number: 77)
tournament.singles_players.create(name: "福長　拓真", college: "近　大", number: 78)

[1,5,6,9,10,14,17,21,22,25,26,30,33,37,38,41,42,46,49,53,54,57,58,62,65,69,70,73,74,78,81,85,86,89,90,94,97,101,102,105,106,110,113,117,118,121,122,126].map do |number|
  tournament.singles_players.create(name: "BYE", number: number + 1)
end
tournament.init
Match.find(33).update_attributes(turn: 1, court: 1, score: "4-6set-set-")
Match.find(34).update_attributes(turn: 1, court: 2, score: "4-6set3-6set-")
Match.find(37).update_attributes(turn: 1, court: 3, score: "4-6set6-4set10-3")
Match.find(38).update_attributes(turn: 1, court: 4)
Match.find(41).update_attributes(turn: 1, court: 5)
Match.find(42).update_attributes(turn: 1, court: 6)
Match.find(65).update_attributes(turn: 1, court: 10)
Match.find(70).update_attributes(turn: 1, court: 11)
Match.find(73).update_attributes(turn: 2, court: 1)
Match.find(78).update_attributes(turn: 2, court: 2)
Match.find(81).update_attributes(turn: 2, court: 3)
Match.find(86).update_attributes(turn: 2, court: 4)
Match.find(89).update_attributes(turn: 2, court: 5)
Match.find(94).update_attributes(turn: 2, court: 6)
Match.find(97).update_attributes(turn: 2, court: 10)
Match.find(102).update_attributes(turn: 2, court: 11)
