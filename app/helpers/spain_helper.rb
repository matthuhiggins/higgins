# encoding: UTF-8

module SpainHelper
  SPAIN_CAPTIONS = {
    '2012-08-16_00.17.25.jpg' => "We just landed in Barcelona!",
    '2012-08-16_09.30.40.jpg' => "What are we going to do now that we're here?",
    '2012-08-16_09.31.42.jpg' => "The living room of our AirBnB place",
    '2012-08-16_10.06.14.jpg' => "Roooaaar",
    '2012-08-16_10.09.19.jpg' => "Brigitte gets close to a street performer on Las Ramblas",
    '2012-08-16_10.10.11.jpg' => "That's no statue, that's a man",
    '2012-08-16_10.18.21.jpg' => "Some courtyard where unemployed catalonians hang out",
    '2012-08-16_10.24.15.jpg' => "Can you tell if she's a tourist?",
    '2012-08-16_10.42.08.jpg' => "Fountains, etc",
    '2012-08-16_11.07.57.jpg' => "It's an old church",
    '2012-08-16_12.07.57.jpg' => "Cappuccinos after dinner at Pla",
    '2012-08-16_19.13.41.jpg' => "Playing the guitar in Spain doesn't make it a Spainish guitar",
    
    '2012-08-17_04.16.41.jpg' => "They called her the white wonder",
    '2012-08-17_04.36.17.jpg' => "A busy day on the Barcelona beach",
    '2012-08-17_06.29.39.jpg' => "Local lobster art",
    '2012-08-17_09.46.18.jpg' => "Almost every restaurant in southern Spain looks like this",
    '2012-08-17_10.13.44.jpg' => "Taking the subway to Park Guell",
    '2012-08-17_10.29.44.jpg' => "Outdoor escalators",
    '2012-08-17_10.41.51.jpg' => "Our clothes are soaking in sweat",
    '2012-08-17_10.42.06.jpg' => "At the top of Park Guell",
    '2012-08-17_10.43.55.jpg' => "We lied earlier, this is the top of Park Guell",
    '2012-08-17_10.51.18.jpg' => "Brigitte fishes for coins to use the water closet",
    '2012-08-17_11.08.48.jpg' => "Gaudi's fine mosaic tilework",
    '2012-08-17_11.12.44.jpg' => "Things get serious",
    '2012-08-17_11.16.56.jpg' => "Matt's shirt is 100% humidity",
    '2012-08-17_12.39.06.jpg' => "Beginning the Fiesta de Gracia. There were zero tourists here",
    '2012-08-17_13.00.13.jpg' => "Every district had a different theme",
    '2012-08-17_13.10.37.jpg' => "Behold the wonder of fake jellyfish",
    '2012-08-17_13.15.16.jpg' => "We are under the sea",
    '2012-08-17_13.40.50.jpg' => "Looking up some skirts",
    '2012-08-17_13.43.31.jpg' => "And we're back in America",
    '2012-08-17_16.48.29.jpg' => "Capping off the night with a Spainish coffee",
    
    '2012-08-18_04.31.57.jpg' => "They began constructing La Sagrada Familia in 1882. It's still not done.",
    '2012-08-18_04.55.10.jpg' => "Behod La Sagrada Familia",
    '2012-08-18_06.00.41.jpg' => "Casa Batllo, a house designed by Gaudi, uses this light well to get light to all floors",
    '2012-08-18_06.50.32.jpg' => "We hopped on a tourist bus to pound out the remaining unseen sights",
    '2012-08-18_06.58.53.jpg' => "And discarded our headphones like everyone else",
    '2012-08-18_06.59.52.jpg' => "This is how to remain seated",
    '2012-08-18_07.28.01.jpg' => "This is where the 1992 Barcelona Olympics were held",
    '2012-08-18_07.44.37.jpg' => "Matt was obsessed with the communication tower",
    '2012-08-18_07.52.39.jpg' => "Matt becomes one with the communication tower",
    
    '2012-08-19_05.21.26.jpg' => "Our terribly underpowered rental car",
    '2012-08-19_06.07.10.jpg' => "Brigitte can't behave herself",
    '2012-08-19_07.37.46.jpg' => "City of Arts and Sciences",
    '2012-08-19_07.45.19.jpg' => "Doing arts and science stuff at the City of Arts and Sciences",
    '2012-08-19_07.57.14.jpg' => "This looks like the thing that came out of the ground in Aliens",
    '2012-08-19_12.01.54.jpg' => "Relaxing after a hard day of doing arts and science",
    '2012-08-20_02.16.48.jpg' => "This bidet got a little too much attention",
    '2012-08-20_03.12.27.jpg' => "Chilling on the rocky beach in Altea. Tomorrow, we ride bikes to the top of the mountain behind me",
    '2012-08-20_03.12.33.jpg' => "Not a hard life out here",

    '2012-08-20_06.10.25.jpg' => "We goin on a bike ride!",
    '2012-08-20_06.14.35.jpg' => "Rocks and ocean",
    '2012-08-20_06.25.02.jpg' => "Matt made Brigitte retake this shot 3 times until she nailed it",
    '2012-08-20_07.11.53.jpg' => "Ahoy from the tunnel",
    '2012-08-20_07.14.21.jpg' => "Almost to the lighthouse",
    '2012-08-20_07.14.53.jpg' => "Rich people sail to Altea rather than drive",
    '2012-08-20_08.40.21.jpg' => "A platter of BBQ meat. Very American of us",
    '2012-08-20_09.19.26.jpg' => "Brigitte shows off her bike skills",
    '2012-08-20_09.37.31.jpg' => "Cleary Matt is making progress on his tan",

    '2012-08-21_02.23.00.jpg' => "In the town of Altea",
    '2012-08-21_02.25.18.jpg' => "Heading to La Mare de Déu del Consol",
    '2012-08-21_02.28.23.jpg' => "Brigitte found the way in",
    '2012-08-21_02.35.48.jpg' => "At the top of Altea",

    '2012-08-30_07.00.12.jpg' => "Do you recognize this from high school art class?",
    '2012-08-30_07.01.58.jpg' => "Relaxing in the mosque",
    '2012-08-30_07.17.33.jpg' => "That's a nice organ you have there",
    '2012-08-30_11.16.02.jpg' => "The tower of the mosque before dusk",
    '2012-08-30_13.54.58.jpg' => "A relaxing night cap",
    '2012-08-30_14.17.34.jpg' => "A giant man lives in this house",

    '2012-08-31_05.23.13.jpg' => "Good luck navigating without a GPS",
    '2012-08-31_07.12.17.jpg' => "Hostal Andorra, our final stop",
    '2012-08-31_08.12.47.jpg' => "Outdoor library",
    '2012-08-31_08.13.16.jpg' => "Partiers come here after a long night at the discoteca",
    '2012-08-31_08.58.19.jpg' => "A long line for the free entry to Museo del Prado",
    '2012-08-31_10.27.56.jpg' => "Some kind of soccer celebration",
    '2012-08-31_11.27.56.jpg' => "Watching soccer at dinner",
    '2012-08-31_12.27.56.jpg' => "At Cuevas de Sesamo, where only sangrias are served",
    '2012-08-31_13.27.56.jpg' => "¡Discoteca!",
    '2012-08-31_13.28.56.jpg' => "In el club!",
    '2012-08-31_14.28.56.jpg' => "Chocolate and churros is magical",
    '2012-08-31_23.01.44.jpg' => "No sleep, time to go home",
    '2012-09-01_00.34.01.jpg' => "Peace out Espana!",
    '2012-09-01_01.32.10.jpg' => "Brigitte inflates her airplane pillow",
  }

  def spain_images(folder)
    Dir[Rails.root.join('app/assets/images/spain').join("#{folder}/*.jpg").to_s].map { |src| File.basename(src) }.sort
  end

  def spain_image(folder, src)
    Rails.logger.info "#{folder}/#{src}"
    link_to image_path("spain/#{folder}/#{src}"), rel: "lightbox[#{folder}]", title: SPAIN_CAPTIONS[src] do
      image_tag "spain/thumbs/#{folder}/#{src}", height: 60
      # image_tag "spain/thumbnail/#{folder}/#{src}", height: '60'
    end
  end
end

# root_path = Rails.root.join('app/assets/images/spain').to_s
# Dir["#{root_path}/**/*.jpg"].map do |orig|
#   next if orig =~ /thumbs/
#   
#   thumb_path = orig.gsub(root_path, "#{root_path}/thumbs")
#   FileUtils.mkdir_p(File.dirname(thumb_path))
#   # `convert --scale 25% #{orig} #{thumb_path}`
#   cmd = "convert #{orig} -thumbnail 100x100^ -gravity center -extent 60x60 #{thumb_path}"
#   p cmd
#   `#{cmd}`
# end.size
