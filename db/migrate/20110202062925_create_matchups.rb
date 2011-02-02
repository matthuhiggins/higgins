class CreateMatchups < ActiveRecord::Migration
  def self.up
    create_table :matchups do |t|
      t.integer     :race_id,     null: false
      t.integer     :skier_id,    null: false
      t.integer     :team_id,     null: false
      t.integer     :oppenent_id, null: false
      t.float       :blue_time,   null: false
      t.float       :red_time,    null: false
      t.float       :oppenent_blue_time
      t.float       :oppenent_red_time
      t.timestamps
    end
  end

  def self.down
    drop_table :matchups
  end
end
