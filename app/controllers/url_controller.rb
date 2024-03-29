class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    url = Url.new
    url.original = params[:original]

    if url.save
      render :create
    else
      render :text => "Error"
    end
  end

end