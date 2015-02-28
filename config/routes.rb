Rails.application.routes.draw do
  root to: 'visitors#index'
  get :temperatures, to: 'temperatures#index'
  get :update, to: 'temperatures#update'
end
