Rails.application.routes.draw do
  root to: 'temperatures#index'
  get :temperatures, to: 'temperatures#index'
  get :update, to: 'temperatures#update'
end
