class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  # validates :title, presence: true
  # validates :title, length: {minimum: 2}

  # validates :year, presence: true

  # validates :plot, presence: true
  # validates :plot, length: {minimum: 2}
end
