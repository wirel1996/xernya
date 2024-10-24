Rails.application.routes.draw do
  get '/admin/users_count', to: 'admin#users_count'
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end
  root to: 'items#index'
end
