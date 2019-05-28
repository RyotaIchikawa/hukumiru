require 'rails_helper'

RSpec.describe Micropost, type: :model do

  # pictureがあれば有効
  it "has a valid factory with picture" do
    expect(FactoryBot.build(:micropost)).to be_valid
  end

  # bland_nameが16文字以上なら無効
  it "is invalid if blnad_name more than 16 characters" do
    micropost = FactoryBot.create(:micropost, brand_name: "BURBERRY BLACK LABEL") # 20文字
    micropost.valid?
    expect(micropost.errors[:bland_name]).to include("は　15もじいない　だよ！")
  end

end
