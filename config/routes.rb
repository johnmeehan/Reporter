Rails.application.routes.draw do
  get 'admin/index'
  put 'admin/set_columns'

  resources :records
  root 'records#index'
end
