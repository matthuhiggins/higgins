class CreateSkiers < ActiveRecord::Migration
  def self.up
    create_table :skiers do |t|
      t.string    :name,    null: false
      t.integer   :number,  null: false
      t.timestamps
    end
    add_index :skiers, :number, unique: :true
  end

  def self.down
    drop_table :skiers
  end
end
