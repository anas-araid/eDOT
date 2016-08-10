Rails.application.routes.draw do
  resources :positions
  get 'static_pages/home'

  devise_for :users
  resources :health_centers
  resources :patients do
    resources :reports
  end

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
