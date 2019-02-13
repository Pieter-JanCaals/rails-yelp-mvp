class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: 0..5, numericality: {only_integer: true}
end
