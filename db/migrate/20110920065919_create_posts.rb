class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title,   null: false
      t.text    :copy,    null: false
      t.integer :list_id, null: false 
      t.timestamps
    end
  end
end
