require 'rails_helper'

RSpec.describe MicropostsController, type: :controller do
    describe "#create" do
        # 認証済みユーザー
        context "as an authenticated user" do
            before do
                @user = FactoryBot.create(:user)
            end

            # マイクロポスト追加
            it "adds a micropost" do
                micropost_params = FactoryBot.attributes_for(:micropost)
                sign_in @user
                expect {
                    post :create, params: { micropost: micropost_params }
                    }.to change(@user.microposts, :count).by(1)
                end
            end
        end

        context "as a guest" do 
            # 302レスポンス
            it "returns a 302 response" do
                micropost_params = FactoryBot.attributes_for(:micropost)
                post :create, params: { micropost: micropost_params }
                expect(response).to have_http_status "302"
            end

            # サインイン画面リダイレクト
            it "redirects to the sign-in page" do
                micropost_params = FactoryBot.attributes_for(:micropost)
                post :create, params: { micropost: micropost_params }
                expect(response).to redirect_to "/users/sign_in"
            end
        end
    end