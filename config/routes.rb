Rails.application.routes.draw do
  resources :reports
  resources :doctors
  resources :health_centers
  resources :community_health_workers
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
