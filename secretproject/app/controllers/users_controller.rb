class UsersController < ApplicationController
  def new

  end
  def create
    @new = User.new(name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation])
    if @new.save
      # render 'new'
      redirect_to "/users/#{@new.id}"
    else
      flash[:message]= "Invalid sign in"
      redirect_to '/users/new'
    end
    # redirect_to "users/#{user.id}"
  end
  def logout
    reset_session
    redirect_to '/sessions/new'
  end
  def show
    @show= User.find(params[:id])
    @secret=Secret.where(user_id:params[:id])
    render 'show'
  end
  def edit
    @edit= User.find(params[:id])
    render 'edit'
  end
  def update
    @edit= User.where(id:params[:id]).update_all(name:params[:name], email:params[:email])
    # edit.name=params[:name]
    # edit.email=params[:email]
    # edit.save
    redirect_to "/users/#{params[:id]}"
  end
  def destroy
    edit= User.find(params[:id])
    edit.destroy
    @secretdelete= Secret.find(params[:id])
    @secretdelete.destroy
    session[:user_id]=nil
    redirect_to '/users/new'
  end
end
