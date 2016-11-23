class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, exclusion: { in: %w(neptunian),
    message: "%{value} is not a valid category" }
  #validates :size, inclusion: { in: %w(chinese italian japanese french belgian) }
end
