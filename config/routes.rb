# config/routes.rb

Rails.application.routes.draw do
  get 'sub_breeds/index'
  root 'breeds#index'
  get '/breed/:name', to: 'breed#index', as: 'breed'
  get '/about', to: 'about#index', as: 'about'
  get '/list', to: 'list#index', as: 'list'
  get '/sub-breeds', to: 'sub_breeds#index', as: 'sub_breeds'
  get '/list/catogery', to: 'list#show', as: 'list_show'
end
