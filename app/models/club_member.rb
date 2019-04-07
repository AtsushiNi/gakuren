class ClubMember < ApplicationRecord
  validates :addmission_year, numericality: { only_integer: true }, presence: true
  validates :name, presence: true
  belongs_to :college
end
