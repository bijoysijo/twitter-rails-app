Rails.application.routes.draw do
  root 'tweeets#index'
  resources :tweeets
end
