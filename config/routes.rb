Rails.application.routes.draw do
  root to: 'temperatures#index'
  get :temperatures, to: 'temperatures#index'
  get :control, to: 'control#index'
  post :control, to: 'control#command'
  get :update, to: 'temperatures#update'
end
