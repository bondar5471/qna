# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'questions#index'

  resources :questions do
    resources :answers do
      member do
        patch :make_best
      end
    end
  end
  mount ActionCable.server => '/cable'
end
