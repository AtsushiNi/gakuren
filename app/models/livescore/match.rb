class Match < ApplicationRecord
  after_initialize :init_score

  def get_score
    self.score.split(/set/).map do |set|
      set.split(/-/)
    end
  end

  def finish?
    set_results = self.get_score.map do |set|
      if (set[0].to_i == 6 && set[1].to_i < 5) || set[0].to_i == 7
        0
      elsif (set[1].to_i == 6 && set[0].to_i < 5) || set[1].to_i == 7
        1
      end
    end
    if set_results[0] == 0
      if set_results[1] ==0
        return self.young
      elsif set_results[1] == 1
        if set_results[2] == 0
          return self.young
        elsif set_results[2] == 1
          return self.old
        else
          return
        end
      else
        return
      end
    elsif set_results[0] == 1
      if set_results[1] == 1
        return self.old
      elsif set_results[1] ==0
        if set_results[2] == 0
          return self.young
        elsif set_results[2] ==1
          return self.old
        else
          return
        end
      else
        return
      end
    else
      return
    end
  end

  # このmatchの勝者が次戦のyoungならtrue,oldならfalse
  def next_battle_young?
    young = Match.where(parent_id: self.parent_id).order(id: "ASC").first
    if self.id == young.id
      true
    elsif self.id - 1 == young.id
      false
    else
      p "matchモデルのnext_battle_young?メソッドでエラー発生"
      p self.id
    end
  end

  private

  def init_score
    self.score ||= "-set-set-"
  end
end
