class WelcomeController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all
    render :index
  end
  
end
