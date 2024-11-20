class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :images

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  CATEGORIES = [
    'Batteries',
    'Chargers and Power Supplies',
    'Power Tools',
    'Outdoor Power Equipment',
    'Sewage and Drain Cleaning',
    'Lighting',
    'Instruments',
    'Storage',
    'Personal Protective Equipment',
    'Heated Work Wear and Clothing',
    'Hand Tools'
  ]
end
