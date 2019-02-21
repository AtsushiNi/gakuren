class News < ApplicationRecord
  mount_uploaders :pdfs, PdfUploader

  validates :title, presence: true
end
