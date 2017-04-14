class Admin < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :users
end
