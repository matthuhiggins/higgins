class Team < ActiveRecord::Base
  class << self
    def find_by_prefix(prefix)
      where('name like ?', "#{prefix}%").first
    end
  end

  has_many :matchups
end
