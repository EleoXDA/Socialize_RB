class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_languages
  has_many :languages, through: :user_languages
  has_many :chat_requests
  has_one_attached :photo
  validates :nickname, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location
end
