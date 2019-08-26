Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shelters
      resources :pets
    end
  end
end
