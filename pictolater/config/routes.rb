Rails.application.routes.draw do
  resource :user
  resource :session
  resources :login, only: [:index]
  namespace :api do
    resources :profiles
  end

  delete 'login' => 'login#destroy'

  root to: "static_pages#index"
end
