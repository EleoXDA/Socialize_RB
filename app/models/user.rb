class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages
  has_many :chat_requests
  has_one_attached :photo
  has_many :events

  # validates :nickname, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location

  # validates :location, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.nickname = auth.info.nickname
      user.image = auth.info.image
      user.html_url = auth.extra.raw_info.html_url
      user.name = auth.info.name
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end


end
