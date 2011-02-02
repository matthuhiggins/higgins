class Skier < ActiveRecord::Base
  has_many :matchups
  has_many :races

  def name=(value)
    self[:name] = value.split(' ').map { |w| w.capitalize }.join(' ')
  end
end
