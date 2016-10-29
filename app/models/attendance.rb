class Attendance < ApplicationRecord
  # Direct associations

  belongs_to :event,
             :counter_cache => true

  belongs_to :attendee,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  # Validations

end
