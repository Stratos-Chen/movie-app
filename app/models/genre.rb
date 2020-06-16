class Genre < ApplicationRecord
  has_many :movie, through: :movie_genre
end
