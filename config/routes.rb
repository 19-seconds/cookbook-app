Rails.application.routes.draw do
  get "/recipes", to: 'recipes#index'
  get "/recipes/new", to: 'recipes#new'
  get "/recipes/:id", to: 'recipes#show'
  post "/recipes", to: 'recipes#create'
end
