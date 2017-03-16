class SlideShowController < ApplicationController
  def index
    # get list of images
    @images = SlideShow.images

    @images = @images.shuffle.collect do |image|
      view_context.image_path "upload/#{image.split('/').last}"
    end

  end

  def show
    @images = SlideShow.images

    @images = @images.shuffle.collect do |image|
      view_context.image_path "upload/#{image.split('/').last}"
    end

    render :json => { :images => @images }

    end
end
