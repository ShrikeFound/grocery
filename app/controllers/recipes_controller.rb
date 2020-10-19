class RecipesController < ApplicationController
  def index 
    @recipes = Recipe.all
  end

  def show 
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipe.id)
    @recipe_ingredient  = RecipeIngredient.new
  end

  def new 
    @recipe = Recipe.new
  end

  def create 
    @recipe = Recipe.new(recipe_params)
    @recipe.save 

    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update 
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    redirect_to recipes_path
  end


  def destroy 
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private 
  def recipe_params
    params.require(:recipe).permit(:name,:description)
  end



end
