class RecipesController < ApplicationController

  def index
    sort_variable = params[:sort]
    if sort_variable
      @recipes = Recipe.all.order(sort_variable)
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
  end

  def create
    title = params[:title]
    ingredients = params[:ingredients]
    prep_time = params[:prep_time]
    image = params[:image]
    recipe = Recipe.new({title: title, ingredients: ingredients, prep_time: prep_time, image: image  })
    recipe.save
    flash[:success] = "Recipe Created"
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.title = params[:title]
    recipe.ingredients = params[:ingredients]
    recipe.prep_time = params[:prep_time]
    recipe.image = params[:image]
    recipe.save
    flash[:success] = "Recipe Updated"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    flash[:warning] = "Recipe Deleted"
    redirect_to "/recipes"
  end
end