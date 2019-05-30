Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do
  resources :divesites, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :dives, except: [:new, :edit]
end
end
