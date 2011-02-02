class Race < ActiveRecord::Base
  has_many :skiers

  before_create do
    self.location = 'Alpental'
    self.day      = 'Thursday'
  end
end
