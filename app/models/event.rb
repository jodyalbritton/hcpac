class Event < ActiveRecord::Base
	resourcify
	include Authority::Abilities
	extend FriendlyId
	friendly_id :title, use: :slugged


	has_many :attachments, as: :attachable
end
