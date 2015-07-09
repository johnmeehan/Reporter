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


  describe 'toggle', :js => true do
    before(:each) do
      session[:visible] = {}
      expect(session[:visible]).to be_empty
    end
    it 'sets a visible session key and value' do
      session[:visible]['somekey'] = 1234
      expect(session[:visible]['somekey']).to eq 1234
    end

    it 'toggle a columns visability in the sesson',:js => true do
      # get :toggle, { col_name: 'version' }, { visible: {:'version' => true}}
      get :toggle, { col_name: 'version' }
      expect(session[:visible][:'version']).to be_falsey
    end

  end
end
