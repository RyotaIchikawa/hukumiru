require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.create(
      username: "Taro Tanaka",
      email: "tester1@example.com",
      password: "hogehoge",
    )
  end

  # username, email, passwordがあれば有効
  it "is valid with username, email, password" do
    expect(@user).to be_valid
  end

  # usernameが無いと無効
  it "is invalid without a username" do
    user = User.new(
      username: nil,
      email: "tester2@example.com",
      password: "hogehogehoge",
    )
    user.valid?
    expect(user.errors[:username]).to include("が　からだよ！")
  end

  # usernameが51文字以上なら無効
  it "is invalid if username more than 51 characters" do
    user = User.new(
      username: "hogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehogehoge", #52
      email: "tester2@example.com",
      password: "hogehogehoge",
    )
    user.valid?
    expect(user.errors[:username]).to include("は　50もじいない　だよ！")
  end

  # emailが無いと無効
  it "is invalid without an email" do
    user = User.new(
      username: "Hanako Yamada",
      email: nil,
      password: "hogehogehoge",
    )
    user.valid?
    expect(user.errors[:email]).to include("が　からだよ！")
  end

  # emailが重複したら無効
  it "does not allow duplicate emails" do
    user = User.new(
      username: "Hanako Yamada",
      email: "tester1@example.com",
      password: "hogehogehoge",
    )
    user.valid?
    expect(user.errors[:email]).to include("は　べつのにしてね！")
  end

  # passwordが5文字以下なら無効
  it "is invalid if password less than 5 characters" do
    user = User.new(
      username: "Hanako Yamada",
      email: "tester2@example.com",
      password: "fooba",
    )
    user.valid?
    expect(user.errors[:password]).to include("は　6もじいじょう　だよ！")
  end

end
