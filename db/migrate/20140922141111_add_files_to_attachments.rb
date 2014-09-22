class AddFilesToAttachments < ActiveRecord::Migration
  def change
  	add_attachment :attachments, :file
  end
end
