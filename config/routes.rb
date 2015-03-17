require 'modules/restrict_format'
require 'modules/api_constraints'

Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :articles
    end
  end

  # TO EMBER APP
  # get '/', to: 'ember#index'
  get '/*path', to: 'ember#index'
  root to: 'ember#index'
end
