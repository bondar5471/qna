# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resource :subscriptions, only: [:create, :destroy]

  use_doorkeeper
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root to: 'questions#index'

  namespace :api do
    namespace :v1 do
      resources :profiles do
        get :me, on: :collection
      end
      resources :questions
    end
  end

  concern :commentable do
    resources :comments
  end

  resources :questions do
    resources :comments
    resources :answers do
      member do
        patch :make_best
      end
    end
  end
  resources :attachments, only: :destroy
  mount ActionCable.server => '/cable'
end
