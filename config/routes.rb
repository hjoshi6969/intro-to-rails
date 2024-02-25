# config/routes.rb

Rails.application.routes.draw do
  root 'breeds#index'
  get '/breed/:name', to: 'breed#index', as: 'breed'
  get '/about', to: 'about#index', as: 'about'
end
