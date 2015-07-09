class AdminController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'password'

  def index
    @columns = Record.record_column_names
  end

  def toggle
    toggle_session_param
    respond_to do |format|
      # format.html{ render :index, locals:{ name: @col }}
      format.js { render layout: false }
    end
  end

  private

    def visibiltiy_params
      params.require(:visible).permit!
      params.permit(:col_name).permit!
    end

    def toggle_session_param
        @col = params[:col_name]
        # if its somehow not set now it will
        session[:visible][@col] = session[:visible][@col] == false ? true : false
    end
end
