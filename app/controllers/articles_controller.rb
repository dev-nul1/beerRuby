class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  
def index
  @articles = Article.all
end

def new
	@article = Article.new
end

def create
  @article = Article.new(article_params)
 
  if @article.save
  	flash[:notice] = "Post successfully created"
    redirect_to @article
  else
    render 'new'
  end
end

def edit
  @article = Article.find(params[:id])
  unauthorized! if cannot? :update, @article
end

def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
  if current_user.admin?
  # do something

  @article = Article.find(params[:id])
  
    if @article.destroy
   	flash[:warn] = "Post successfully deleted"
    	redirect_to articles_path
    end
  end
end

def show
  @article = Article.find(params[:id])
end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
