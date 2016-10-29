class Receipt < ApplicationRecord
  # Direct associations

  belongs_to :event,
             :counter_cache => true

  belongs_to :payer,
             :class_name => "User"

  # Indirect associations

  # Validations

end
