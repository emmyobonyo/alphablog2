class ArticlesController < ApplicationController
  def show
    # to make the variable available to the view, we have to make it an instance variable
    @article = Article.find(params[:id])
    # The id is being passed to the application using a params hash
  end

  def index 
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: params[:article], status: :unprocessable_entity
  end


end