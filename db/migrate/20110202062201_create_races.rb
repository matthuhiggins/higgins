class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.integer :week,      null: false
      t.string  :day,       null: false
      t.string  :location,  null: false
      t.timestamps
    end
    add_index :races, [:week, :day, :location], unique: true
  end

  def self.down
    drop_table :races
  end
end
