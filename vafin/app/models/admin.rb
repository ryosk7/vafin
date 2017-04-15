class Admin < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :users
  validates :event, presence:true
  validates :user, presence:true
end
