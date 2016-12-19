class LikesController < ApplicationController

  def create
    if not Like.where(user_id:session[:user_id], bright_idea_id: params[:idea_id]).exists?
        @like=Like.create(user_id:session[:user_id], bright_idea_id:params[:idea_id])
    else
      flash[:message]= "You have already liked this idea!"
    end
    # @edit=BrightIdea.find(id:params[:id]))
    @edit=BrightIdea.where(id:params[:id])

    redirect_to '/bright_ideas/index'
  end

end
