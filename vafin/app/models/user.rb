class User < ApplicationRecord
  belongs_to :event
  # belongs_to :admin
  has_many :follows_from, class_name: Follow, foreign_key: :from_user_id
  has_many :follows_to, class_name: Follow, foreign_key: :to_user_id
  has_many :following, through: :follows_from, source: :to_user
  has_many :followed, through: :follows_to, source: :from_user
end
