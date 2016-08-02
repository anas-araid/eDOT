Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users
  resources :health_centers
  resources :patients do
    resources :reports
  end
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
