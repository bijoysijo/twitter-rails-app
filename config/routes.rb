Rails.application.routes.draw do
  resource :tweeets
  root 'tweeets#index'

end
