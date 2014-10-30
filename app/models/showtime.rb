class Showtime < ActiveRecord::Base
  belongs_to :showable, polymorphic: true
  has_many :reservations
end
