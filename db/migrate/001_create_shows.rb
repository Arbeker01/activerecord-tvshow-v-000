class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :ratings

      t.timestamps null: false
    end
  end
end
