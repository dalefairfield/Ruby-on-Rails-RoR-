class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def newuser
    @new= User.create(first_name: params[:first_name], last_name: params[:last_name], email_address: params[:email_address], password: params[:password])
    render 'newuser'
  end
  def edit
    @edit= User.find(params[:id])
    render 'edit'
  end
  def update
    edit= User.find(params[:id])
    edit.first_name=params[:first_name]
    edit.last_name=params[:last_name]
    edit.email_address=params[:email_address]
    edit.password=params[:password]
    edit.save
    redirect_to '/users/index'
  end
  def show
    @show= User.find(params[:id])
    render 'show'
  end
  def destroy
    edit= User.find(params[:id])
    edit.destroy
    redirect_to '/users/index'
  end
end
