module AuthHelper
  def http_login
    user = 'admin'
    pw = 'password'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pw)
  end
end

module AuthRequestHelper
  #
  # pass the @env along with your request, eg:
  #
  # GET '/labels', {}, @env
  #
  def http_login
    @env ||= {}
    user = 'admin'
    pw = 'password'
    @env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pw)
  end
end

# then in Rspec support:

RSpec.configure do |config|
  config.include AuthRequestHelper, type: :request
  config.include AuthHelper, type: :controller
end
