class RpgsController < ApplicationController
  def index
    if session[:gold]==nil
      session[:gold]=0
    end

    if session[:messages] == nil
    		session[:messages] = []
  	end

    session[:total] = session[:gold].to_i + session[:total].to_i
	  @total = session[:total]
    if session[:gold] < 0
       session[:messages] << "Entered a casino and lost #{session[:gold]*-1} golds... Ouch.. "
    elsif session[:gold] > 0
       session[:messages] << "Earned #{session[:gold]} golds from the #{session[:building]}! "
    end
    @activities = session[:messages]
   	    session[:gold] = 0
   	    session[:building] = ""
	end

 	def new
    if params[:building] == 'farm'
      	session[:gold] = rand(10..20)
    elsif params[:building] == 'cave'
      	session[:gold] = rand(5..10)
    elsif params[:building] == 'house'
      	session[:gold] = rand(2..5)
    elsif params[:building] == 'casino'
      	session[:gold] = rand(-50..50)
    end

    session[:building] = params[:building]

    redirect_to :action => :index
 	end

end
