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

  def show
    column = params[:format]
    session[:visible][column] = true
    redirect_to admin_index_path
  end

  def hide
    column = params[:format]
    session[:visible][column] = false
    redirect_to admin_index_path
  end

  private

  def visibiltiy_params
    params.require(:visible).permit!
  end
end
