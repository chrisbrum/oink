Rails.application.routes.draw do
  devise_for :users
  root "transactions#index"

  resources "transactions"
  resources "accounts"

  get "up" => "rails/health#show", as: :rails_health_check
end
