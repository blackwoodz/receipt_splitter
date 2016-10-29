class Event < ApplicationRecord
  # Direct associations

  has_many   :receipts,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
