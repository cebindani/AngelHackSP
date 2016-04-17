class WelcomeController < ApplicationController

  def index

  end

  def editor
    @Task = Task.find_by_id(params[:id])

    
  end
end