module Unsplash
  class Api
    class << self
      def search(query)
        Unsplash::Photo.connection.get("/search/photos?page=1&query=#{query}&per_page=5")
      end

      def photos
        Unsplash::Photo.connection.get("/photos?per_page=5")
      end

      def favorites(username)
        Unsplash::Photo.connection.get("/users/#{username}/likes")
      end

      def like(id)
        Unsplash::Photo.connection.post("/photos/#{id}/like")
      end
    end
  end
end