class Attachment < ActiveRecord::Base
	has_attached_file :file, :styles => { :large => "800x800>", :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

  	belongs_to :attachable, polymorphic: true
end
