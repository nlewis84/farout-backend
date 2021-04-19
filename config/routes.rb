Rails.application.routes.draw do

  get "/api/v1/pictures/top", to: "api/v1/pictures#top"
  get "/api/v1/pictures/newest", to: "api/v1/pictures#newest"

  namespace :api do
    namespace :v1 do
      resources :pictures do
        resources :votes
      end

    end
  end
end
