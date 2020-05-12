require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe "#index" do
        # 認証済みユーザー
        context "as an authenticated user" do
            before do
                @user = FactoryBot.create(:user)
            end

            # 正常にレスポンスを返す
            it "responds successfully" do
                sign_in @user
                get :index
                expect(response).to be_success
            end

            # 200レスポンスを返す
            it "returns a 200 response" do
                sign_in @user
                get :index
                expect(response).to have_http_status "200"
            end
        end

        context "as a guest" do
            # 302レスポンスを返す
            it "returns a 302 response" do
                get :index
                expect(response).to have_http_status "302"
            end

            # サインイン画面へリダイレクト
            it "redirects to the sign-in page" do
                get :index
                expect(response).to redirect_to "/users/sign_in"
            end
        end
    end

    describe "#show" do
        # ログインユーザー
        context "as a login user" do
            before do
                @user = FactoryBot.create(:user)
                @micropost = FactoryBot.create(:micropost)
            end

            it "responds successfully" do
                sign_in @user
                get :show, params: { id: @micropost.id }
                expect(response).to be_success
            end
        end

        # ログインしていないユーザー
        context "as a not login user" do
            before do
                @user = FactoryBot.create(:user)
                @micropost = FactoryBot.create(:micropost)
            end
            # later
        end
    end

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