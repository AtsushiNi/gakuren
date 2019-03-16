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
tournament = SinglesTournament.create(name: "平成31年度春関男子シングルス", draw: 128)
[0,2,3,4,7,8,11,12,13,15,16,18,19,20,23,24,27,28,29,31,32,34,35,36,39,40,43,44,45,47,48,50,51,52,55,56,59,60,61,63,64,66,67,68,71,72,75,76,77,79,80,82,83,84,87,88,91,92,93,95,96,98,99,100,103,104,107,108,109,111,112,114,115,116,119,120,123,124,125,127].map do |number|
  tournament.singles_player.create(name: "プレイヤー#{number}", college: "大学#{number}", number: number)
end
[1,5,6,9,10,14,17,21,22,25,26,30,33,37,38,41,42,46,49,53,54,57,58,62,65,69,70,73,74,78,81,85,86,89,90,94,97,101,102,105,106,110,113,117,118,121,122,126].map do |number|
  tournament.singles_player.create(name: "BYE", number: number)
end
tournament.init
