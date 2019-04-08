class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  validates :username, presence: true, length: { maximum: 50 }
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: { maximum: 255 },
    uniqueness: { case_sensitive: false }
  validates :password, presence: true, allow_nil: true
  mount_uploader :image, PictureUploader
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  
  def feed
    Micropost.where("user_id = ?", id)
  end
  
end