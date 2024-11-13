class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  RATINGS_RANGE = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATINGS_RANGE }, numericality: { only_integer: true }
end
