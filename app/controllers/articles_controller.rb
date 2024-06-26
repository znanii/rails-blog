class ArticlesController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def index
    @articles = Article.order('created_at DESC') 
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
        @article = Article.new(article_params)
    @article.creator = current_user.username
    if  @article.save
      redirect_to @article #not to have double post
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
     
    if  @article.update(article_params)
      redirect_to @article #not to have double post
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path #redirect_to action: :index
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end




end
