FactoryBot.define do
  factory :micropost do
    item_name "Tシャツ"
    picture Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/fixtures/IMG_8366.png"))
    brand_name "ユニクロ"
    association :user
  end
end
