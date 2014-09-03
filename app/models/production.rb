class Production < ActiveRecord::Base
	has_many :credits
	has_many :profiles, through: :credits
end
