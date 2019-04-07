class SinglesTournament < ApplicationRecord
  has_many :matches, dependent: :destroy
  has_many :singles_players, dependent: :destroy
  validates :draw, :numericality => { only_integer: true }
  validate :draw_validate

  def init
    # matchインスタンスを作成
    if self.draw == 64
      self.match.create(parent_id: nil, round: 6)

      parent_id = 1
      for round in [5,4,3,2,1] do
        (2**(5-round)).times do |num|
          if round != 1
            self.matches.create(parent_id: parent_id, round: round)
            self.matches.create(parent_id: parent_id, round: round)
          else
            self.matches.create(parent_id: parent_id, round: round, young: num*4+1, old: num*4+2)
            self.matches.create(parent_id: parent_id, round: round, young: num*4+3, old: num*4+4)
          end
          parent_id += 1
        end
      end
    elsif self.draw == 128
      self.matches.create(parent_id: nil, round: 7)

      parent_id = 1
      for round in [6,5,4,3,2,1] do
        (2**(6-round)).times do |num|
          if round != 1
            self.matches.create(parent_id: parent_id, round: round)
            self.matches.create(parent_id: parent_id, round: round)
          else
            self.matches.create(parent_id: parent_id, round: round, young: num*4+1, old: num*4+2)
            self.matches.create(parent_id: parent_id, round: round, young: num*4+3, old: num*4+4)
          end
          parent_id += 1
        end
      end
    end
    bye_case
  end

  def entry(college_name, members, checkboxes)
    text = college_name
    checkboxes.each do |name|
      if name != ""
        text += ":"+name
      end
    end
    text += ";"

    if self.entry_list != nil && (index = self.entry_list.index(college_name))
      entry_list = self.entry_list
      remove = entry_list.slice(index, self.entry_list.length - index).slice(/[^;]*;/)
      entry_list.slice!(remove)
      self.update_attributes(entry_list: entry_list + text)
    else
      self.update_attributes(entry_list: self.entry_list + text) if self.entry_list != nil
      self.update_attributes(entry_list: text) if self.entry_list == nil
    end
  end

  private

  def draw_validate
    if draw != 64 && draw != 128
      errors.add(:draw, "must be 64 or 128")
    end
  end

  #初戦がbyeのときに次戦を登録
  def bye_case
    matches = self.matches.where(round: 1)
    matches.each do |match|
      if self.singles_players.find_by(number: match.young).name == "BYE" #youngがBYE
        if match.next_battle_young?
          self.matches.find(match.parent_id).update_attributes(young: match.old)
        else
          self.matches.find(match.parent_id).update_attributes(old: match.old)
        end
        match.update_attributes(winner_num: match.old)
      elsif self.singles_players.find_by(number: match.old).name == "BYE" #oldがBYE
        if match.next_battle_young?
          self.matches.find(match.parent_id).update_attributes(young: match.young)
        else
          self.matches.find(match.parent_id).update_attributes(old: match.young)
        end
        match.update_attributes(winner_num: match.young)
      end
    end
  end

end
