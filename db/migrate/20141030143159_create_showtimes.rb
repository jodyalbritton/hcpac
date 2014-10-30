class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.datetime :date
      t.references :showable, polymorphic: true

      t.timestamps
    end
  end
end
