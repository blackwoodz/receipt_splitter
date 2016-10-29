class Event < ApplicationRecord
  # Direct associations

  has_many   :attendances,
             :dependent => :destroy

  has_many   :receipts,
             :dependent => :destroy

  belongs_to :organizer,
             :class_name => "User",
             :counter_cache => :organized_events_count

  # Indirect associations

  # Validations

end
