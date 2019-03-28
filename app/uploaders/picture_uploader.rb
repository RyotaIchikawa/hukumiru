class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fill: [150, 150, "Center"]
  process :fix_exif_rotation # => config/initializers/minimagick.rb
  
  # 本番環境用
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # デフォルトの保存先  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # デフォルト画像
  def default_url
    "default_image.jpeg"
  end

  # 拡張子のバリデーション
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
end
