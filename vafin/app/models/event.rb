class Event < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :admin

  validates :address, presence: true
  # validates :price, presence: true
  validates :detail, presence:true
  validates :user, presence:true
  validates :admin, presence:true
  # validates :capacity, presence:true
  # validates :photo, presence:true
end
