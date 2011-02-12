class Race < ActiveRecord::Base
  class << self
    def import(io)
      io.each_line do |line|
        next unless line =~ /(\d+) (\d+) (\w+ \w+) (.*) (\d+)/
        
        skier = Skier.find_or_create_by_number($2)
        matchup = Match.create(skier: skier)
      end
    end
  end

  has_many :skiers

  before_create do
    self.location = 'Alpental'
    self.day      = 'Thursday'
  end
end
