class Ranking < ApplicationRecord
  def calcurate(tournaments)
    data = [{}] #ランキングの情報
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
            data.push({name:winner.name, college:winner.college, distribution[:type].to_sym => distribution[i]})
          end
        end
      end
    end
  end

end
