class UsersController < ApplicationController
  def index
  end
  def hello
    render :text => "Hello Coding Dojo"
  end
  def say
    render :text => "Saying hello"
  end
  def joe
    render :text => "Saying hello Joe"
  end
  def michael
    render :text => "Saying hello Michael"
  end
  def times
    if session[:times]==nil
      session[:times]=0
    else
      session[:times] +=1
    end
  end
  def restart
    session[:times]=0
    redirect_to '/times'
  end
end
