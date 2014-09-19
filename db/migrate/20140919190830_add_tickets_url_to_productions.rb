class AddTicketsUrlToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :tickets_url, :string
  end
end
