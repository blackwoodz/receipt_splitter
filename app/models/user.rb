class User < ApplicationRecord
  # Direct associations

  has_many   :organized_events,
             :class_name => "Event",
             :foreign_key => "organizer_id",
             :dependent => :destroy

  has_many   :attendances,
             :foreign_key => "attendee_id",
             :dependent => :destroy

  has_many   :receipts,
             :foreign_key => "payer_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
