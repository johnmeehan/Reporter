class AdminController < ApplicationController
  # Spec said basic authenciation.....
  http_basic_authenticate_with name: 'admin', password: 'password'

  def index
    @columns = Record.record_column_names
  end


  def set_columns
    if params[:visible]
      session[:visible] ||= {}
      visibiltiy_params.each do |key, value|
        session[:visible][key.to_sym] = value
      end
    end
    redirect_to root_url
  end

  private

  def visibiltiy_params
    params.require(:visible).permit!
  end
end
