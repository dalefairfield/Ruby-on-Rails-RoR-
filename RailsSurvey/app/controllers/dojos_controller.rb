class DojosController < ApplicationController
  def index
  end
  def create
    if session[:times]==nil
      session[:times]=1
    else
      session[:times] +=1
    end
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:message] = params[:message]

    flash[:message]="You have submittted this form #{session[:times]}  times now."
    redirect_to '/dojos/result'
  end
  def result

  end
end
