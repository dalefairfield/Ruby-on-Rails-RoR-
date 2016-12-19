class SecretsController < ApplicationController
  def index
    @secret=Secret.all
  end
  def new

  end
  def create
    print "?????????????????????????????????"
    print session[:user_id]
    print "?????????????????????????????????"
    @newsecret=Secret.create(content:params[:content], user_id:session[:user_id])
    if @newsecret.errors.any?
      flash[:message]= "Secret cannot be blank"
      redirect_to "/users/#{session[:user_id]}"
    else
      print Secret.all
      redirect_to "/users/#{session[:user_id]}"
    end
  end
  def destroy
    @secretdelete= Secret.find(params[:id])
    @secretdelete.destroy
    redirect_to "/users/#{session[:user_id]}"
  end

end
