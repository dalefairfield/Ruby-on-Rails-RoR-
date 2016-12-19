class WordsController < ApplicationController
  def index
    if session[:times]==nil
      session[:times]=1
    else
      session[:times] +=1
    end
    flash[:message]="Random Word(Attempt# #{session[:times]}"

    @word=14.times.map { [*'0'..'9', *'a'..'z'].sample }.join
    render 'index'
  end
end
