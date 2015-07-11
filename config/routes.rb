Rails.application.routes.draw do
  namespace :admin do
    get 'index'
    get 'toggle'
  end

  resources :records do
  	get 'import', on: :collection
  end
  root 'records#index'
end
