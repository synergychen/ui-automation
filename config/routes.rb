Rails.application.routes.draw do
  resource :dhc, only: [] do
    resources :adventures, only: [:index]
    resources :bosses, param: :name, only: [:show]
    get :replay
    get :stop
    get :screenshot
  end
end
