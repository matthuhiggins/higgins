class Matchup < ActiveRecord::Base
  belongs_to :team
  belongs_to :skier
  belongs_to :race
  belongs_to :opponent, class_name: 'Skier'
end
