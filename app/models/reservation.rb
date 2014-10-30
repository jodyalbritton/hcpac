class Reservation < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :user
end
