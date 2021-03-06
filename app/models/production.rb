class Production < ActiveRecord::Base
    resourcify
	include Authority::Abilities
	extend FriendlyId
	has_many :credits
	has_many :showtimes, as: :showable
	has_many :profiles, through: :credits
	has_many :attachments, as: :attachable
	friendly_id :title, use: :slugged
end
