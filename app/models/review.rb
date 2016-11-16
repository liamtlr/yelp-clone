class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: 0..5
end
