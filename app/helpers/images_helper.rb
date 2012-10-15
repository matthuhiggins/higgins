module ImagesHelper
  def spain_images(folder)
    Dir[Rails.root.join('app/assets/images/spain').join("#{folder}/*.jpg").to_s].map { |src| File.basename(src) }
  end

  def spain_image(folder, src)
    link_to image_path("spain/#{folder}/#{src}"), rel: "lightbox[#{folder}]" do
      lazy_image "spain/#{folder}/#{src}", height: '60'
    end
  end

  def lazy_image(src, options = {})
    # image_tag 'spain/placeholder.png', options.reverse_merge('data-original' => image_path(src), 'class' => 'lazy')
    image_tag 'spain/placeholder.png', options.reverse_merge('data-original' => image_path(src), 'class' => 'lazy')
  end
end