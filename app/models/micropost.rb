class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :item_name, presence: true, length: { maximum: 10}
  validates :brand_name, length: { maximum: 15}
  validates :picture, presence: true
  validate  :picture_size
  
  private

    # 画像サイズのバリデーション
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "5MBより　ちいさくしてね！")
      end
    end
  
end
