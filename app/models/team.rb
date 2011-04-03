class Team < ActiveRecord::Base
  class << self
    def find_by_prefix(prefix)
      prefix = prefix.gsub '!', ''
      where('name like ?', "#{prefix}%").first
    end
  end

  has_many :matchups
end
