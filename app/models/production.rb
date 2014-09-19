class Production < ActiveRecord::Base
    resourcify
	include Authority::Abilities
	extend FriendlyId
	has_many :credits
	has_many :profiles, through: :credits

	friendly_id :title, use: :slugged
end
