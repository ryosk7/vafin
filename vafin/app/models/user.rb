class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :follows_from, class_name: "Follow", foreign_key: :from_user_id
  # has_many :follows_to, class_name: "Follow", foreign_key: :to_user_id
  # has_many :following, through: :follows_from, source: :to_user
  # has_many :followed, through: :follows_to, source: :from_user

  has_many :joinings
  has_many :events, through: :joinings, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  # validates :events, presence: true
  # validates :joinings, presence: true

  # after_create :send_welcome_email
  # devise :omniauthable, omniauth_providers: [:facebook]

  # devise :database_authenticatable, :registerable,
         # :recoverable, :rememberable, :trackable, :validatable
end
