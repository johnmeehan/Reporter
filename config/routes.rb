Rails.application.routes.draw do
  get 'admin/index'
  put 'admin/set_columns'
  get 'admin/show'
  get 'admin/hide'

  resources :records
  root 'records#index'
end
