class GalleryController < ApplicationController

  def gallery
    @images = Image.order("created_at desc")
    @slides = Image.order("created_at desc").limit(4).offset(1)
  end

end
