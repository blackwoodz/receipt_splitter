class Receipt < ApplicationRecord
  # Direct associations

  has_many   :receipt_lines,
             :dependent => :destroy

  belongs_to :event,
             :counter_cache => true

  belongs_to :payer,
             :class_name => "User"

  # Indirect associations

  # Validations

end
