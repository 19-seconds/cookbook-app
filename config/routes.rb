Rails.application.routes.draw do
  get "/one_recipe_url", to: 'recipes#one_recipe_action'
end
