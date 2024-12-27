class Pdf < ApplicationRecord
  belongs_to :owner
  belongs_to :uploaded_by
end
