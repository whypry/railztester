class PagesController < ApplicationController

  protect_from_forgery

  def index
    @message = params[:message]
    # Look in app/views/pages/index.html.erb
  end

  def grandma
    input = params[:user_input]

    if input == input.upcase
      message = "fuck off"
    else
      message = "speak up ya bish"
    end

    redirect_to action: 'index', grandma: input, message: message
  end
end
