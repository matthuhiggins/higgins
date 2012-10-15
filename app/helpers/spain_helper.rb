module SpainHelper
  def spain_images(folder)
    Dir[Rails.root.join('app/assets/images/spain').join("#{folder}/*.jpg").to_s].map { |src| File.basename(src) }
  end

  def spain_image(folder, src)
    link_to image_path("spain/#{folder}/#{src}"), rel: "lightbox[#{folder}]" do
      image_tag "spain/#{folder}/#{src}", height: '60'
      # image_tag "spain/thumbnail/#{folder}/#{src}", height: '60'
    end
  end
end

# Dir[Rails.root.join('app/assets/images/spain/**/*.jpg').to_s].map do |src|
#   p File.basename(src)
#   `convert --resize 25% thumbnail`
# end