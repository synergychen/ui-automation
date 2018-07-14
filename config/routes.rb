Rails.application.routes.draw do
  resources :adventures do
    collection do
      get :start
    end
  end
end
