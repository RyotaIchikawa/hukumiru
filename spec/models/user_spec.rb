require 'rails_helper'

RSpec.describe User, type: :model do

  # username, email, passwordがあれば有効
  it "has a valid factory with username, email, password" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  # usernameが無いと無効
  it "is invalid without a username" do
    user = FactoryBot.build(:user, username: nil)
    user.valid?
    expect(user.errors[:username]).to include("が　からだよ！")
  end

  # usernameが51文字以上なら無効
  it "is invalid if username more than 51 characters" do
    user = FactoryBot.build(:user, 
      username: "hogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehoge") #52
    user.valid?
    expect(user.errors[:username]).to include("は　50もじいない　だよ！")
  end

  # emailが無いと無効
  it "is invalid without an email" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("が　からだよ！")
  end

  # emailが重複したら無効
  it "does not allow duplicate emails" do
    FactoryBot.create(:user, email: "foobar@example.com")
    user = FactoryBot.build(:user, email: "foobar@example.com")
    user.valid?
    expect(user.errors[:email]).to include("は　べつのにしてね！")
  end

  # passwordが5文字以下なら無効
  it "is invalid if password less than 5 characters" do
    user = FactoryBot.build(:user, password: "fooba")
    user.valid?
    expect(user.errors[:password]).to include("は　6もじいじょう　だよ！")
  end

end
