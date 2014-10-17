class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :ticket_start
      t.datetime :ticket_end
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
