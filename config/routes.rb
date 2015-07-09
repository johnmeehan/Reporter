Rails.application.routes.draw do
  namespace :admin do
    get 'index'
    get 'toggle'
  end

  resources :records
  root 'records#index'
end
