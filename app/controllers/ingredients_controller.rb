class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  #Don't need a show action as of now.

  def new 
    @ingredient = Ingredient.new
    puts "new!";
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save 
      puts "ingredient saved"
    else
      puts "ingredient not saved."
    end
    redirect_to ingredients_path
  end


  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)

    redirect_to ingredients_path

  end

  def destroy 
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.destroy
      puts "ingredient destroyed!"
    else
      puts "ingredient not destroyed"
    end

    redirect_to ingredients_path
  end








  private 
  def ingredient_params
    params.require(:ingredient).permit(:name,:category,:price)
  end


end
