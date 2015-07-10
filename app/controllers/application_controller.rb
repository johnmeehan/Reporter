class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Elasticsearch::Transport::Transport::Errors::BadRequest do |error|
    if error.message =~ /SearchParseException/ && params[:query]
      flash[:error] = "You tried to sort an empty column!"
    end
      render file: "/public/400.html",status: 400, layout: true
  end

end
