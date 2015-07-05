require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  context 'with valid credentials' do
    describe 'GET #index' do
      it "returns success" do
        http_login
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'without credentials' do
    describe "GET #index" do
      it "returns http unauthorized" do
        get :index
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
