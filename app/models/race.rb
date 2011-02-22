class Race < ActiveRecord::Base
  has_many :skiers
  has_many :matchups

  before_create do
    self.location = 'Alpental'
    self.day      = 'Thursday'
  end

  class Importer
    attr_reader :io, :race
    def initialize(race, io)
      @io = io      
      @race = race
    end

    def run
      begin
        line = io.gets
      end until line.chomp =~ /TEAM RESULTS FOR/

      io.gets
      io.gets

      import_teams
      import_matchups
    end

    def import_teams
      while line = io.gets do
        if line =~ /\d+([\s?A-Z]+)/
          p $1
          team = Team.find_or_create_by_name($1.strip)
        else
          break
        end
      end
    end

    MATCHUP_REGEX = /(?<place>\d+)\s+(?<number>\d+)\s+(?<name>\w+(( \w+)?)+)\s+(?<team>[\w!]+(( \w+)?)+)\s+(?<opponent>\d+)\s+(?<red_time>\d+\.\d+)\s+(?<blue_time>\d+\.\d+)/
    def import_matchups
      while line = io.gets do
        if match = line.chomp.match(MATCHUP_REGEX)
          skier = Skier.find_or_create_by_number match[:number], name: match[:name]
          race.matchups.create(
            skier: skier,
            team: Team.find_by_prefix(match[:team]),
            place: match[:place],
            red_time: normalize_time(match[:red_time]),
            blue_time: normalize_time(match[:blue_time]),
            opponent_number: match[:opponent]
          )
        end
      end
    end

    def normalize_time(time)
      if time.to_f == 0.0
        9999.000
      end
    end
  end

  class << self
    def import(week, io)
      race = Race.create week: week      
      Importer.new(race, io).run
      connection.execute %{
        update matchups m
        join races r
          on m.race_id = r.id
        join skiers s
          on m.skier_id = s.id
        join matchups m_opp
          on m_opp.race_id = r.id and m_opp.opponent_number = s.number
        join skiers s_opp
          on m_opp.skier_id = s_opp.id
        set m.opponent_red_time = m_opp.red_time
           ,m.opponent_blue_time = m_opp.blue_time
           ,m.opponent_id = s_opp.id
      }
    end
  end
end
