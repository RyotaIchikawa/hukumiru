class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 20}
  validates :picture, presence: true
  validate  :picture_size
  
  private

    # 画像サイズのバリデーション
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "5MBより　ちいさくしてね　！")
      end
    end
  
end
