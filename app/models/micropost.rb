class Micropost < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :brand_name, length: { maximum: 15}
  validates :picture, presence: true
  validate  :picture_size
  
  # マイクロポストをいいね
  def iine(user)
    likes.create(user_id: user.id)
  end

  # マイクロポストのいいねを解除
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
  
  # 現在のユーザーがいいねしてたらtrueを返す
  def iine?(user)
    iine_users.include?(user)
  end
  
  private

    # 画像サイズのバリデーション
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "5MBより　ちいさくしてね！")
      end
    end
  
end
