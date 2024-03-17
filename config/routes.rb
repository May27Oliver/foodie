# frozen_string_literal: true

Rails.application.routes.draw do
  resources :landing_pages
  resources :foodies
  resources :votes
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'landing_pages#index'
end
