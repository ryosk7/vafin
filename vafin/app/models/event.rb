class Event < ApplicationRecord
  has_many :joinings
  has_many :users, through: :joinings ,dependent: :destroy

  validates :address, presence: true
  # validates :price, presence: true
  validates :detail, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  # validates :capacity, presence:true
  # validates :photo, presence:true
end
