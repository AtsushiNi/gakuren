require "administrate/field/base"

class ParentField < Administrate::Field::Base
  def to_s
    data
  end
end
