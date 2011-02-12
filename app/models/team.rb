class Team < ActiveRecord::Base
  class << self
    def find_by_prefix(prefix)
      
    end
  end

  has_many :matchups
end
