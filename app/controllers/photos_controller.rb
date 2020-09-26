require 'unsplash/api'

class PhotosController < ApplicationController
  def index
    @photos = Unsplash::Api.photos.parsed_response
  end

  def search
    @photos = Unsplash::Api.search(params["query"]).parsed_response["results"]
  end

  def favorites
    @photos = Photo.where(favorite: true)
  end

  def like
    photo = Photo.find_or_create_by(unsplash_id: params["id"])
    photo.update(favorite: true, url: params["url"])
  end
end
