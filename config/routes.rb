Rails.application.routes.draw do
    namespace :api do
        namespace :v1 do
            resources :posts, only: [:index]
        end
    end
    resources :companies, only: %i[index show]
end