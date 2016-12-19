class UsersController < ApplicationController
  def index
    @users= User.find(params[:id])
    render json: @users
  end

  def new
    @users= User.create( name: params[:name])
    puts @users
    render 'new'
  end

  def create
    arr=['lead','elad', 'anne', 'will', 'nameer', 'monnstone', 'chris']
    @name=arr[rand(arr.length)]
    @create=User.create(name:@name)
    # redirect_to '/users/create'
    render "create"
  end

  def edit
    @edit= User.find(params[:id])
    render 'edit'
  end

  def total
    render json:User.count
  end

end
