class Photo < ApplicationRecord
  validates :unsplash_id, :url, presence: true
end
