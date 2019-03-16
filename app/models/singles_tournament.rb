class SinglesTournament < ApplicationRecord
  has_many :matches, dependent: :destroy
  has_many :singles_player, dependent: :destroy

  def init
    # matchインスタンスを作成
    i=1
    self.matches.create(parent_id: nil, young: (1..self.draw/2).to_a, old: ((self.draw/2+1)..self.draw).to_a)
    1..7.times do |n|
      if self.draw >= 2**n
        2**(n-1).times do
          self.matches.create(parent_id: i)
          self.matches.create(parent_id: i)
          i += 1
        end
      end
    end
    #初戦のmatchにプレイヤーを登録
  end

end
