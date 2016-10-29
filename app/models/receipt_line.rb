class ReceiptLine < ApplicationRecord
  # Direct associations

  belongs_to :receipt,
             :counter_cache => true

  # Indirect associations

  # Validations

end
