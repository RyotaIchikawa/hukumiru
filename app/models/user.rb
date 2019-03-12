class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  validates :username, presence: true, length: { maximum: 50 }
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, allow_nil: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end