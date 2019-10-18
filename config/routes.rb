# frozen_string_literal: true

Rails.application.routes.draw do
  resources :facts, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]


# Memory Game Routes
# GET request to /facts, shood route to facts controller, index action
  # get '/facts' => 'facts#index'
  # get '/facts/:id' => 'facts#show'
  # delete '/facts/:id' => 'facts#destroy'
  # patch '/facts/:id' => 'facts#update'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
