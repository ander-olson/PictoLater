Rails.application.routes.draw do
  resource :user
  resource :session
  resources :login, only: [:index]
  namespace :api, defaults: { format: :json } do
    resources :profiles
    resources :photos
    resources :comments
    resources :subscriptions
  end

  delete 'login' => 'login#destroy'

  root to: "static_pages#index"
end
