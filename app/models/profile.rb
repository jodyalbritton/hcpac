class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :credits
  has_many :productions, through: :credits
end
