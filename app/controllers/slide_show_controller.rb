class SlideShowController < ApplicationController
  def index
    # get list of images
  end

  def show
    @images = Dir.glob("#{Rails.root}/app/assets/images/upload/*.jpg")

    @images = @images.shuffle.collect do |image|
      "upload/#{image.split('/').last}"
    end

    p @images


    respond_to do |format|
        format.html { render :layout => !request.xhr? }
        # other formats
    end
  end
end
