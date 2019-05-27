FactoryBot.define do
  factory :user do
    username "Taro Tanaka"
    sequence(:email) { |n| "tester#{n}@example.com" }
    password "hogehoge"
  end
end
