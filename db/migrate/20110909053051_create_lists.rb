class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title,      null: false
      t.text :description,  null: false
      t.timestamps
    end
  end
end
