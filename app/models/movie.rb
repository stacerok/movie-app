class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, length: {minimum: 2}

  validates :year, presence: true

  validates :plot, presence: true
  validates :plot, length: {minimum: 2}
end
