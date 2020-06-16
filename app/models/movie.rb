class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, presence: true
  validates :title, :plot, uniqueness: true
  validates :year, numericality: { greater_than: 1970}
  
  has_many :actors
  has_many :genre, through: :movie_genre
end
