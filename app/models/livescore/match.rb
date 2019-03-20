class Match < ApplicationRecord
  after_initialize :init_score

  def get_score
    self.score.split(/set/).map do |set|
      set.split(/-/)
    end
  end

  private

  def init_score
    self.score ||= "-set-set-"
  end
end
