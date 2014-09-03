class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.references :production, index: true
      t.references :profile, index: true
      t.string :credited_as

      t.timestamps
    end
  end
end
