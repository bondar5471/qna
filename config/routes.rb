# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}
  root to: 'questions#index'
  
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
