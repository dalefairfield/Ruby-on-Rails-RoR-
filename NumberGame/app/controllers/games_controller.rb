class GamesController < ApplicationController
  def index
    @hide_div=true
    session[:guess] = params[:guess]
    if session[:number]==nil
      session[:number]=rand(0..100)
    end
    print session[:guess].class
    print session[:number].class
    if session[:guess] != nil
      if session[:guess].to_i < session[:number]
        flash[:message] = "Your guess was too low"
      elsif session[:guess].to_i >session[:number]
        flash[:message] = "Your guess was too high"
      else
        # @hide_div=false
        flash[:message] = "#{session[:number]} was the number. Try again"
        session[:number]=rand(0..100)

      end
    redirect_to '/'
  end
  end
end
