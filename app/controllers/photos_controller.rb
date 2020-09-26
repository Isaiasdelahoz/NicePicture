class PhotosController < ApplicationController
  def index
    @photos = Unsplash::Photo.connection.get("/photos").parsed
  end
end
