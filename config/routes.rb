Rails.application.routes.draw do

  resources :admins
  devise_for :ausers
  devise_for :rusers
  resources :job_seekers
  resources :recruiters
  devise_for :users
  resources :applications
  resources :jobs
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
