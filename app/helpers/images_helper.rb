module ImagesHelper
  def spain_image(src)
    lazy_image "spain/#{src}.jpg", size: '500x500'
  end

  def lazy_image(src, options = {})
    # image_tag 'spain/placeholder.png', options.reverse_merge('data-original' => image_path(src), 'class' => 'lazy')
    image_tag 'spain/placeholder.png', options.reverse_merge('data-original' => image_path(src), 'class' => 'lazy')
  end
end