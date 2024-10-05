Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  namespace :api do
    match '/*', controller: 'cors', action: 'cors_preflight_check', via: [:options]

    namespace :v1 do
      resources :items, only: [:index]
      resources :categories, only: [:index]
    end
  end

  resources :roles
  resources :staff_users
  resources :dashboard, only: [:index]
  root "dashboard#index"

  get "items" => "items#index", as: "items"
  get "items/new" => "items#new", as: "item_new"
  get "items/edit/:id" => "items#edit", as: "edit_item"
  get "items/:id" => "items#show", as: "item"
  get "items/delete/:id" => "items#delete_item", as: "delete_item"

  patch "items/:id" => "items#update"
  post "items" => "items#create", as: "item_create"


  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
