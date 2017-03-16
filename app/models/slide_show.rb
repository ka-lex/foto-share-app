class SlideShow

  def self.images
    Dir.glob("#{Rails.root}/app/assets/images/upload/*.jpg")
  end

  def self.shuffeled_images
    self.images.shuffle.collect do |image|
      view_context.image_path "upload/#{image.split('/').last}"
    end
  end

end