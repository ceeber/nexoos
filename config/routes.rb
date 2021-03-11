Rails.application.routes.draw do
   
  namespace :api do
    namespace :v1 do
      #get '/items', to: 'items#index'
      resources :requesters, only: %i[create]
      resources :credits, only: %i[create]
      resources :loans, only: %i[show create]
    end
  end
end
