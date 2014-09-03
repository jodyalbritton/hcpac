class Credit < ActiveRecord::Base
	belongs_to :profile
	belongs_to :production
end
