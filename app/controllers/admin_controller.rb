class AdminController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'password'

  def index
    @columns = Record.record_column_names
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
