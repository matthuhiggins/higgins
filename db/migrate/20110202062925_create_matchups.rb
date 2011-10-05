class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.integer     :race_id,         null: false
      t.integer     :skier_id,        null: false
      t.integer     :team_id,         null: false
      t.integer     :place,           null: false
      t.float       :red_time,        null: false
      t.float       :blue_time,       null: false
      t.integer     :opponent_number, null: false
      t.integer     :opponent_id
      t.float       :opponent_red_time
      t.float       :opponent_blue_time
      t.timestamps
    end
  end
end
