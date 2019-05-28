FactoryBot.define do
  factory :relationship do
    association :follower_id
    assotiation :followed_id
  end
end
