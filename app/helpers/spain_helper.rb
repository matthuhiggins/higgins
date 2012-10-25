module SpainHelper
  def spain_images(folder)
    Dir[Rails.root.join('app/assets/images/spain').join("#{folder}/*.jpg").to_s].map { |src| File.basename(src) }.sort
  end

  def spain_image(folder, src)
    link_to image_path("spain/#{folder}/#{src}"), rel: "lightbox[#{folder}]" do
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
