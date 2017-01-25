class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
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
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    redirect_to "/recipes"
  end
end