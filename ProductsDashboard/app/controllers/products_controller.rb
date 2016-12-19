class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def show
    @show=Product.find(params[:id]) 
    render 'show'
  end

  def new
    @new= Product.create(name: params[:name], description: params[:description], price: params[:price])
    render 'new'
  end

  def edit
    @edit= Product.find(params[:id])
    render 'edit'
  end

  def create

  end

  def update
    edit= Product.find(params[:id])
    edit.name=params[:name]
    edit.description=params[:description]
    edit.price=params[:price]
    edit.save
    redirect_to '/products/index'
  end

  def destroy
    edit= Product.find(params[:id])
    edit.destroy
    redirect_to '/products/index'
  end
end
