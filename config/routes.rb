Rails.application.routes.draw do

  #get 'jobs', => 'jobs#index'
  post '/jobs', to: 'jobs#create'
  get '/jobs', to: 'jobs#index'
  get '/jobs/:id', to: 'jobs#find'
end
