class AddNotesToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :notes, :text
    add_column :reservations, :full_name, :string
    add_column :reservations, :email_address, :string
    add_column :reservations, :phone, :string
  end
end
