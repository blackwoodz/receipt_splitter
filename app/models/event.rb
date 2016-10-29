class Event < ApplicationRecord
  # Direct associations

  has_many   :attendances,
             :dependent => :destroy

  has_many   :receipts,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
