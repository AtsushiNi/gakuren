class Ranking < ApplicationRecord
  def calcurate(tournaments)
    data=[] #ランキングの情報
    tournaments.each do |tournament|
      distribution = {} # {勝利ラウンド:獲得ポイント}
      if tournament.name.index("春関") != nil
        distribution = {type: "春関", 1 => 32, 2 => 63, 3 => 125, 4 => 250, 5 => 500, 6 => 750, 7 => 1000 }
        registerPoints(distribution,tournament, data)
      elsif tournament.name.index("夏関") != nil
        distribution = {type: "夏関", 1 => 38, 2 => 75, 3 => 150, 4 => 300, 5 => 600, 6 => 900, 7 => 1200 }
        registerPoints(distribution,tournament, data)
      else
        raise tournament.name+" : この大会の種類が分かりません。大会名は「春関、夏関」のいずれかを含む必要があります。"
      end
    end

    #トータルポイントの計算
    data.each do |ranker|
      ranker[:total] = ranker[:春関] if ranker[:春関]
      ranker[:total] = ranker[:total] + ranker[:インカレ] if ranker[:インカレ]
      ranker[:total] = ranker[:total] + ranker[:インドア] if ranker[:インドア]
      ranker[:total] = ranker[:total] + ranker[:夏関] if ranker[:夏関]
      ranker[:total] = ranker[:total] + ranker[:新進] if ranker[:新進]
      ranker[:total] = ranker[:total] + ranker[:全日本] if ranker[:全日本]
    end
    #トータルポイントの高い順にソート
    data.sort_by!{|a| a[:total] }.reverse!

    #文字列に変換,data属性に登録(DBへの保存はまだしない)
    self.data = to_s(data)

    return data
  end

  #ランキングデータ(文字列)をハッシュの配列に変換
  def to_a
    data = []
    self.data.split(";").each do |ranker|
      ranker_data = ranker.split(":")
      hash = {name:ranker_data[0], college:ranker_data[1],total:ranker_data[8].to_i}
      hash[:春関] = ranker_data[2].to_i if ranker_data[2] != ""
      hash[:インカレ] = ranker_data[3].to_i if ranker_data[3] != ""
      hash[:インドア] = ranker_data[4].to_i if ranker_data[4] != ""
      hash[:夏関] = ranker_data[5].to_i if ranker_data[5] != ""
      hash[:新進] = ranker_data[6].to_i if ranker_data[6] != ""
      hash[:全日本] = ranker_data[7].to_i if ranker_data[7] != ""
      data.push(hash)
    end
    data
  end

  private

  #選手とポイントの登録
  def registerPoints(distribution,tournament,data)
    (1..7).each do |i| #各ラウンド
      tournament.matches.where(round: i).each do |match| #各試合
        if (num = match.winner_num)
          winner = tournament.singles_players.find_by(number: num)
          if (pointRanker = data.find{|ranker| ranker[:name] == winner.name && ranker[:college] == winner.college}) #この選手がdataにすでに登録済みの場合はポイントを登録
            pointRanker[distribution[:type].to_sym] = distribution[i]
          else #この選手とポイントを登録
            data.push({name:winner.name, college:winner.college, distribution[:type].to_sym => distribution[i], total:0})
          end
        end
      end
    end
  end

  #ランキングデータ(ハッシュの配列)を文字列に変換
  def to_s(data)
    string = ""
    data.each do |ranker|
      string = string + ranker[:name] + ":" + ranker[:college] + ":"
      string = string + ranker[:春関].to_s if ranker[:春関]
      string = string + ":"
      string = string + ranker[:インカレ].to_s if ranker[:インカレ]
      string = string + ":"
      string = string + ranker[:インドア].to_s if ranker[:インドア]
      string = string + ":"
      string = string + ranker[:夏関].to_s if ranker[:夏関]
      string = string + ":"
      string = string + ranker[:新進].to_s if ranker[:新進]
      string = string + ":"
      string = string + ranker[:全日本].to_s if ranker[:全日本]
      string = string + ":"
      string = string + ranker[:total].to_s + ";"
    end
    string
  end

end
