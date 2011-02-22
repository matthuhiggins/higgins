namespace :race do
  task import: :environment do
    Race.delete_all
    Skier.delete_all
    Matchup.delete_all

    2.upto(5) do |week|
      filename = "races/alp_thursday_week_#{week}.txt"
      Race.import week, open(filename)
    end

    p "#{Matchup.count} matchups imported"
  end
end