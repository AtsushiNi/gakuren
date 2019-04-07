class College < ApplicationRecord
  has_many :club_members
  has_secure_password
end
