class TimesController < ApplicationController
  def index
    @time= Time.now
  end
end
