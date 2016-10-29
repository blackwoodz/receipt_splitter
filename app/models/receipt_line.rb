class ReceiptLine < ApplicationRecord
  # Direct associations

  belongs_to :claimer,
             :class_name => "Attendance",
             :counter_cache => true

  belongs_to :receipt,
             :counter_cache => true

  # Indirect associations

  # Validations

end
