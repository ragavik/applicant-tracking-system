Rails.application.routes.draw do
  resources :job_seekers
  resources :recruiters
  resources :applications
  resources :jobs
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
