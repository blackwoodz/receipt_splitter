class Attendance < ApplicationRecord
  # Direct associations

  has_many   :receipt_lines,
             :foreign_key => "claimer_id",
             :dependent => :destroy

  belongs_to :event,
             :counter_cache => true

  belongs_to :attendee,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  # Validations

end
