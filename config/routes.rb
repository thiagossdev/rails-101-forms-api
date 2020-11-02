require 'sidekiq/web'

Rails.application.routes.draw do
  if Rails.env.development? then
    mount Sidekiq::Web => '/sidekiq'
  end

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'

      resources :forms
      resources :questions, only: [:create, :update, :destroy]
      resources :answers, only: [:index, :show, :create, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
