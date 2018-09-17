# frozen_string_literal: true

Rails.application.routes.draw do
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
