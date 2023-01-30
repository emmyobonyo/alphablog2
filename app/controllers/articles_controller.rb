class ArticlesController < ApplicationController
  def show
    # to make the variable available to the view, we have to make it an instance variable
    debugger
    @article = Article.find(params[:id])
    # The id is being passed to the application using a params hash
  end

  def index 
    @articles = Article.all
  end
end