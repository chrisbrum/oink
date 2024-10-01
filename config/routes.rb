# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources 'transactions'
  resources 'accounts'

  resources 'budgets' do
    resources :budget_categories, path: 'categories', as: 'categories'
  end

  get 'up' => 'rails/health#show', as: :rails_health_check
end
