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
College.create(name: "近畿大学男子部", initial_name: "近　大", men: true, email: "kinki_men@gmail.com", league: 1, password: "kinki", players_num: 20, captain: "キャプテン", competent: "主務", prefecture: "大阪府")
College.create(name: "大阪体育大学男子部", initial_name: "大体大", men: true, email: "taidai_men@gmail.com", league: 2, password: "taidai", players_num: 35, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "大阪府")
College.create(name: "京都大学男子部", initial_name: "京　大", men: true, email: "kyoto_men@gmail.com", league: 2, password: "kyoto", players_num: 20, captain: "延澤　尚登", competent: "野末　由惟", prefecture: "京都府")
College.create(name: "京都産業大学男子部", initial_name: "京産大", men: true, email: "kyousan_men@gmail.com", league: 3, password: "kyousan", players_num: 27, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "天理大学男子部",initial_name: "天理大", men: true, email: "tenri_men@gmail.com", league: 4, password: "tenri", players_num: 10, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "奈良県")
College.create(name: "兵庫教育大学男子部",initial_name: "兵教大", men: true, email: "hyoukyou_men@gmail.com", league: 5, password: "hyoukyou", players_num: 8, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "兵庫県")

College.create(name: "関西大学女子部", men: false, email: "kansai_women@gmail.com", league: 1, password: "kansai", players_num: 4, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "大阪府")
College.create(name: "同支社大学女子部", men: false, email: "dousisya_women@gmail.com", league: 2, password: "dousisya", players_num: 15, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "天理大学女子部", men: false, email: "tenri_women@gmail.com", league: 3, password: "tenri", players_num: 8, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "奈良県")
College.create(name: "神戸大学女子部", men: false, email: "koube_women@gmail.com", league: 4, password: "koube", players_num: 6, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "兵庫県")
College.create(name: "京都大学女子部", men: false, email: "kyouto_women@gmail.com", league: 5, password: "kyoto", players_num: 3, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
College.create(name: "京都産業大学女子部", men: false, email: "kyousan_women@gmail.com", league: 5, password: "kyousan", players_num: 9, captain: "佐藤　和夫", competent: "山田　一郎", prefecture: "京都府")
# 管理者アカウント
Root.create(name: "root", email: "gakuren@gmail.com", password: "gakuren")

# シングルス大会
tournament = SinglesTournament.create(name: "平成31年度春関男子シングルス", draw: 128, courts: "0102030405061011", entry_start: DateTime.current.yesterday.beginning_of_day, entry_end: DateTime.current.next_month.end_of_day)

tournament.singles_players.create(name: "竹元　佑亮", college: "関　大", number: 1)
tournament.singles_players.create(name: "栗山　拓也", college: "関学大", number: 3)
tournament.singles_players.create(name: "高橋　直種", college: "立命大", number: 4)
tournament.singles_players.create(name: "石川　希望", college: "神院大", number: 5)
tournament.singles_players.create(name: "大野　翼", college: "関　大", number: 8)
tournament.singles_players.create(name: "矢ノ川　歩", college: "近　大", number: 9)
tournament.singles_players.create(name: "高村　烈司", college: "関　大", number: 12)
tournament.singles_players.create(name: "大窪　広海", college: "同　大", number: 13)
tournament.singles_players.create(name: "高田　直幸", college: "関学大", number: 14)
tournament.singles_players.create(name: "大塚　健太郎", college: "神院大", number: 16)
tournament.singles_players.create(name: "安藤　新", college: "大体大", number: 17)
tournament.singles_players.create(name: "清水　計都", college: "近　大", number: 19)
tournament.singles_players.create(name: "中川　雅之", college: "大教大", number: 20)
tournament.singles_players.create(name: "岡崎　大倭", college: "甲南大", number: 21)
tournament.singles_players.create(name: "岡田　大樹", college: "近　大", number: 24)
tournament.singles_players.create(name: "松本　樹", college: "近　大", number:  25)
tournament.singles_players.create(name: "小林　泰晴", college: "大体大", number: 28)
tournament.singles_players.create(name: "伊達　祐太朗", college: "同　大", number: 29)
tournament.singles_players.create(name: "石井　勇気", college: "近　大", number: 30)
tournament.singles_players.create(name: "岩田　三四郎", college: "同　大", number: 32)
tournament.singles_players.create(name: "加藤　隆聖", college: "関　大", number: 33)
tournament.singles_players.create(name: "安井　優貴", college: "立命大", number: 35)
tournament.singles_players.create(name: "矢野　駿太郎", college: "近　大", number: 36)
tournament.singles_players.create(name: "谷口　嘉志", college: "近　大", number: 37)
tournament.singles_players.create(name: "福嶋　航大", college: "甲南大", number: 40)
tournament.singles_players.create(name: "福本　定也", college: "神院大", number: 41)
tournament.singles_players.create(name: "石島　星歩", college: "同　大", number: 44)
tournament.singles_players.create(name: "岩村　優友", college: "甲南大", number: 45)
tournament.singles_players.create(name: "東川　将大", college: "甲南大", number: 46)
tournament.singles_players.create(name: "豊嶋　一樹", college: "近　大", number: 48)
tournament.singles_players.create(name: "長谷川　聡", college: "近　大", number: 49)
tournament.singles_players.create(name: "合田　健人", college: "近　大", number: 51)
tournament.singles_players.create(name: "山本　桐生", college: "関学大", number: 52)
tournament.singles_players.create(name: "工藤　丈寛", college: "関　大", number: 53)
tournament.singles_players.create(name: "山岸　大輝", college: "同　大", number: 56)
tournament.singles_players.create(name: "稗島　啓司", college: "甲南大", number: 57)
tournament.singles_players.create(name: "田中　伸治", college: "関学大", number: 60)
tournament.singles_players.create(name: "曽川　大輔", college: "近　大", number: 61)
tournament.singles_players.create(name: "福永　太洋", college: "神　大", number: 62)
tournament.singles_players.create(name: "山尾　玲貴", college: "関　大", number: 64)
tournament.singles_players.create(name: "飯島　啓斗", college: "同　大", number: 65)
tournament.singles_players.create(name: "土田　啓太", college: "関学大", number: 67)
tournament.singles_players.create(name: "塩井　岳", college: "関　大", number: 68)
tournament.singles_players.create(name: "太田　智貴", college: "近　大", number: 69)
tournament.singles_players.create(name: "吉田　有宇哉", college: "甲南大", number: 72)
tournament.singles_players.create(name: "堀　秦也", college: "同　大", number: 73)
tournament.singles_players.create(name: "小山　拓人", college: "近　大", number: 76)
tournament.singles_players.create(name: "深井　圭", college: "関学大", number: 77)
tournament.singles_players.create(name: "福長　拓真", college: "近　大", number: 78)
tournament.singles_players.create(name: "小野　和哉", college: "近　大", number: 80)
tournament.singles_players.create(name: "高木　修", college: "近　大", number: 81)
tournament.singles_players.create(name: "森田　隼平", college: "関　大", number: 83)
tournament.singles_players.create(name: "本田　健人", college: "関　大", number: 84)
tournament.singles_players.create(name: "瀧本　怜央", college: "立命大", number: 85)
tournament.singles_players.create(name: "中山　僚", college: "同　大", number: 88)
tournament.singles_players.create(name: "西岡　航", college: "近　大", number: 89)
tournament.singles_players.create(name: "佐藤　稔", college: "神院大", number: 92)
tournament.singles_players.create(name: "仁坂　拓未", college: "大体大", number: 93)
tournament.singles_players.create(name: "松田　和樹", college: "同　大", number: 94)
tournament.singles_players.create(name: "矢田　弘樹", college: "関　大", number: 96)
tournament.singles_players.create(name: "林　大貴", college: "関　大", number: 97)
tournament.singles_players.create(name: "西本　光一", college: "甲南大", number: 99)
tournament.singles_players.create(name: "西川　康", college: "神院大", number: 100)
tournament.singles_players.create(name: "吉田　開", college: "関学大", number: 101)
tournament.singles_players.create(name: "佐伯　峻", college: "同　大", number: 104)
tournament.singles_players.create(name: "古川　将樹", college: "立命大", number: 105)
tournament.singles_players.create(name: "森　匡", college: "甲南大", number: 108)
tournament.singles_players.create(name: "本間　春樹", college: "関学大", number: 109)
tournament.singles_players.create(name: "山口　大智", college: "関学大", number: 110)
tournament.singles_players.create(name: "恒松　優也", college: "近　大", number: 112)
tournament.singles_players.create(name: "島田　達也", college: "関　大", number: 113)
tournament.singles_players.create(name: "松本　光平", college: "桃　大", number: 115)
tournament.singles_players.create(name: "市川　凌輔", college: "近　大", number: 116)
tournament.singles_players.create(name: "榊原　楓", college: "立命大", number: 117)
tournament.singles_players.create(name: "徳光　翔馬", college: "大体大", number: 120)
tournament.singles_players.create(name: "楠部　佑真", college: "近　大", number: 121)
tournament.singles_players.create(name: "藤永　大真", college: "甲南大", number: 124)
tournament.singles_players.create(name: "水口　凌", college: "近　大", number: 125)
tournament.singles_players.create(name: "藤井　遼太郎", college: "近　大", number: 126)
tournament.singles_players.create(name: "柴野　晃輔", college: "関　大", number: 128)

[1,5,6,9,10,14,17,21,22,25,26,30,33,37,38,41,42,46,49,53,54,57,58,62,65,69,70,73,74,78,81,85,86,89,90,94,97,101,102,105,106,110,113,117,118,121,122,126].map do |number|
  tournament.singles_players.create(name: "BYE", number: number + 1)
end
tournament.init
Match.find(33).update_attributes(turn: 1, court: 1, score: "4-6set-set-", status: "Playing", start_time: Time.zone.local(2019,3,24,10,20,0))
Match.find(34).update_attributes(turn: 1, court: 2, score: "4-6set3-4set-", status: "Playing", start_time: Time.zone.local(2019,3,24,10,22,0))
Match.find(37).update_attributes(turn: 1, court: 3, score: "4-6set6-4set6-3", winner_num: 21, status: "Completed", start_time: Time.zone.local(2019,3,24,10,21,0), finish_time: Time.zone.local(2019,3,24,12,33,0))
Match.find(38).update_attributes(turn: 1, court: 4, status: "Start-at", start_time: Time.zone.local(2019,3,24,13,30,0), ready: true)
Match.find(41).update_attributes(turn: 1, court: 5, status: "Start-at", start_time: Time.zone.local(2019,3,24,13,30,0), ready: true)
Match.find(42).update_attributes(turn: 1, court: 6, status: "Start-at", start_time: Time.zone.local(2019,3,24,13,30,0), ready: true)
Match.find(65).update_attributes(turn: 1, court: 10, status: "Not-before", start_time: Time.zone.local(2019,3,24,13,0,0), ready: true)
Match.find(70).update_attributes(turn: 1, court: 11, status: "Not-before", start_time: Time.zone.local(2019,3,24,13,0,0), ready: true)
Match.find(73).update_attributes(turn: 2, court: 1, status: "Followed-by")
Match.find(78).update_attributes(turn: 2, court: 2, status: "Followed-by")
Match.find(81).update_attributes(turn: 2, court: 3, status: "Followed-by", ready: true)
Match.find(86).update_attributes(turn: 2, court: 4, status: "Followed-by")
Match.find(89).update_attributes(turn: 2, court: 5, status: "Followed-by")
Match.find(94).update_attributes(turn: 2, court: 6, status: "Followed-by")
Match.find(97).update_attributes(turn: 2, court: 10, status: "Followed-by")
Match.find(102).update_attributes(turn: 2, court: 11, status: "Followed-by")

#ランキング
Ranking.create(data: "岡崎　大倭:甲南大:63::::::900;柴野　晃輔:関　大:32::::::900;藤永　大真:甲南大:32::::::900;楠部　佑真:近　大:32::::::800;徳光　翔馬:大体大:32::::::800;榊原　楓:立命大:32::::::800;島田　達也:関　大:32::::::700;恒松　優也:近　大:32::::::700;森　匡:甲南大:32::::::600;古川　将樹:立命大:32::::::500;佐伯　峻:同　大:32::::::400;吉田　開:関学大:32::::::400;林　大貴:関　大:32::::::300;矢田　弘樹:関　大:32::::::300;佐藤　稔:神院大:32::::::300;西岡　航:近　大:32::::::300;中山　僚:同　大:32::::::300;瀧本　怜央:立命大:32::::::300;高木　修:近　大:32::::::300;小野　和哉:近　大:32::::::200;小山　拓人:近　大:32::::::200;堀　秦也:同　大:32::::::200;吉田　有宇哉:甲南大:32::::::100;太田　智貴:近　大:32::::::100;飯島　啓斗:同　大:32::::::100;山尾　玲貴:関　大:32::::::32;田中　伸治:関学大:32::::::32;稗島　啓司:甲南大:32::::::32;山岸　大輝:同　大:32::::::32;工藤　丈寛:関　大:32::::::32;長谷川　聡:近　大:32::::::32;豊嶋　一樹:近　大:32::::::32;石島　星歩:同　大:32::::::32;福本　定也:神院大:32::::::32;福嶋　航大:甲南大:32::::::32;谷口　嘉志:近　大:32::::::32;加藤　隆聖:関　大:32::::::32;岩田　三四郎:同　大:32::::::32;小林　泰晴:大体大:32::::::32;松本　樹:近　大:32::::::32;岡田　大樹:近　大:32::::::32;安藤　新:大体大:32::::::32;大塚　健太郎:神院大:32::::::32;高村　烈司:関　大:32::::::32;矢ノ川　歩:近　大:32::::::32;大野　翼:関　大:32::::::32;石川　希望:神院大:32::::::32;竹元　佑亮:関　大:32::::::32;藤井　遼太郎:近　大:16::::::16;水口　凌:近　大:16::::::16;市川　凌輔:近　大:16::::::16;松本　光平:桃　大:16::::::16;山口　大智:関学大:16::::::16;本間　春樹:関学大:16::::::16;西川　康:神院大:16::::::16;西本　光一:甲南大:16::::::16;松田　和樹:同　大:16::::::16;仁坂　拓未:大体大:16::::::16;本田　健人:関　大:16::::::16;森田　隼平:関　大:16::::::16;福長　拓真:近　大:16::::::16;深井　圭:関学大:16::::::16;塩井　岳:関　大:16::::::16;土田　啓太:関学大:16::::::16;福永　太洋:神　大:16::::::16;曽川　大輔:近　大:16::::::16;山本　桐生:関学大:16::::::16;合田　健人:近　大:16::::::16;東川　将大:甲南大:16::::::16;岩村　優友:甲南大:16::::::16;矢野　駿太郎:近　大:16::::::16;安井　優貴:立命大:16::::::16;石井　勇気:近　大:16::::::16;伊達　祐太朗:同　大:16::::::16;中川　雅之:大教大:16::::::16;清水　計都:近　大:16::::::16;高田　直幸:関学大:16::::::16;大窪　広海:同　大:16::::::16;高橋　直種:立命大:16::::::16;栗山　拓也:関学大:16::::::16;")

#エントリー
tournament.update_attributes(entry_list: "甲南大:岡崎　大倭:藤永　大真:森　匡:吉田　有宇哉:稗島　啓司:福嶋　航大;関　大:柴野　晃輔:島田　達也:林　大貴:矢田　弘樹:山尾　玲貴:工藤　丈寛:加藤　隆聖:高村　烈司:大野　翼:竹元　佑亮;近　大:楠部　佑真:恒松　優也:西岡　航:高木　修:小野　和哉:小山　拓人:太田　智貴:長谷川　聡:豊嶋　一樹:谷口　嘉志:松本　樹:岡田　大樹:矢ノ川　歩;大体大:徳光　翔馬;立命大:榊原　楓:古川　将樹;同　大:佐伯　峻:中山　僚:山岸　大輝:岩田　三四郎:石島　星歩:堀　秦也;神院大:福本　定也:大塚　健太郎:石川　希望:佐藤　稔;関学大:田中　伸治:吉田　開;")
