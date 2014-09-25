class AddTicketDateToProductions < ActiveRecord::Migration
  def change
    add_column :productions, :ticket_start_date, :datetime
    add_column :productions, :ticket_end_date, :datetime
  end
end
