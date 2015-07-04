class AdminController < ApplicationController
  # Spec said basic authenciation.....
  http_basic_authenticate_with name: 'admin', password: 'password'

  def index
  end
end
