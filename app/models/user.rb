class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :likes, dependent: :destroy
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
  
  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def following?(other_user)
    following.include?(other_user)
  end
  
end