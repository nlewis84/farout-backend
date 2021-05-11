Rails.application.routes.draw do

  get "/api/v1/pictures/top", to: "api/v1/pictures#top"
  get "/api/v1/pictures/newest", to: "api/v1/pictures#newest"
  get "/api/v1/pictures/filter", to: "api/v1/pictures#filter"

  namespace :api do
    namespace :v1 do
      resources :pictures, only: [:index] do
        resources :votes, only: [:update]
      end

    end
  end
end
