# 最新情報
path = "#{Rails.root}/public/uploads/news/平成30年度関西学生新進テニストーナメント　予選ドロー2018-12-28/"
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
College.create(name: "京都大学", email: "kyoto@gmail.com", password: "kyoto")

# 管理者アカウント
Root.create(name: "root", email: "gakuren@gmail.com", password: "gakuren")
