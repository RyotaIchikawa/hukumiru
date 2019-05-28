FactoryBot.define do
  factory :like do
    association :user_id
    association :micropost_id
  end
end
