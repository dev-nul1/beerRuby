class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  
  def index
    @recipes = Recipe.all
  end

  def show
    #@recipe = Recipe.find(params[:id])
    @malts = @recipe.malts

  end
  def create
    redirect_to article_path(@article)
  end
  def create
    @recipe = Recipe.new(recipe_params)
    @article = @recipe.article.show(:id)

    if @recipe.save
      redirect_to @recipe
    else
      flash[:notice] = "Could not create recipe"
      render :new
    end
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
  def recipe_params
	    params.require(:recipe).permit(:id, :name, :user_id, :xml, malts: [:id, :malt_name, :malt_lovibond, :malt_info, :malt_category, :malt_yield, :malt_origin, :malt_supplier, :malt_type ])
	  end
end