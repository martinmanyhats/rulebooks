class Pdf < ApplicationRecord
  has_one_attached :pdf_file
  belongs_to :owner, class_name: 'User'
  belongs_to :uploaded_by, class_name: 'User'
end
