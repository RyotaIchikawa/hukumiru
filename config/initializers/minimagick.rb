module CarrierWave
  module MiniMagick
    
    # 投稿画像の向きを修正
    
    def fix_exif_rotation
      manipulate! do |img|
        img.auto_orient
        img = yield(img) if block_given?
        img
      end
    end
    
  end
end