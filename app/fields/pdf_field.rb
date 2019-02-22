require "administrate/field/base"

class PdfField < Administrate::Field::Base
  def to_s
    data.map do |each_data|
      each_data.file.file
    end
  end
end
