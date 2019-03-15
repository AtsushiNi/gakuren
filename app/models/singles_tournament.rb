class SinglesTournament < ApplicationRecord
  has_many :matches, dependent: :destroy
  has_many :singles_player, dependent: :destroy
end
