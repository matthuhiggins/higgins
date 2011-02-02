class Team < ActiveRecord::Base
  has_many :matchups

  class << self
    def find_by_prefix(prefix)
      
    end
  end
end
