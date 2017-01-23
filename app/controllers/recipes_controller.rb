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
  end
end