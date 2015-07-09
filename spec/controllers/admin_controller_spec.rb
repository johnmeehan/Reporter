require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  context 'with valid credentials' do
    describe 'GET #index' do
      it 'returns success' do
        http_login
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'without credentials' do
    describe 'GET #index' do
      it 'returns http unauthorized' do
        get :index
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end


  describe 'toggle' do
    before(:each) do
      session[:visible] = {}
      # session[:visible]['version'] = true
    end
    it 'sets a visible session key and value' do
      session[:visible]['somekey'] = 1234
      expect(session[:visible]['somekey']).to eq 1234
    end

    it 'toggle a columns visability in the sesson' do
      get :toggle, { col_name: 'version' }, { visible: {:'version' => true}}
      expect(session[:visible][:'version']).to be_falsey
    end

    it 'toggle a columns visability in the sesson' do
      get :toggle, { col_name: 'market_value' }, { visible: {:'market_value' => false}}
      expect(session[:visible]['market_value']).to eq true
    end
  end
end
