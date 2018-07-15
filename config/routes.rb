Rails.application.routes.draw do
  resources :adventures, only: [:show]
  resources :bosses, param: :name, only: [:show]
  resource :replay
end
