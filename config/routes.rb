Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :pictures do
        resources :votes
      end
    end
  end
end
