class BrightIdeasController < ApplicationController
  def index
    @ideas=BrightIdea.all
  end

  def new
  end

  def create
    # print "?????????????????????????????????"
    # print session[:user_id]
    # print "?????????????????????????????????"
    @newidea=BrightIdea.create(content:params[:content], user_id:session[:user_id])
    if @newidea.errors.any?
      flash[:message]= "Idea cannot be blank"
      redirect_to '/bright_ideas/index'
    else
      print BrightIdea.all
      redirect_to '/bright_ideas/index'
    end
  end

  def show
    @show= BrightIdea.find(params[:id])
    @like=Like.where(bright_idea_id:params[:id])
    # redirect_to "/bright_ideas/#{params[:idea_id]}"
    render 'show'
  end



  def destroy
    @ideadelete= BrightIdea.find(params[:id])
    @ideadelete.destroy
    redirect_to '/bright_ideas/index'
  end
end
