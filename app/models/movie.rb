class Movie < ApplicationRecord
  validates :title, :overview, :post_url, :rating, presence: true
  validates :title, :overview, uniqueness: true

  has_many :bookmarks
end
