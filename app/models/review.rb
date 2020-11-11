class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, numericality: true
  validates :restaurant_id, presence: true
  validates :rating, inclusion: { in: (0..5) }
end
