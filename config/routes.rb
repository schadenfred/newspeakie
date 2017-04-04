Rails.application.routes.draw do

  resources :duckspeaks, shallow: true do
    resources :whistles
  end

  resources :quacks

  root 'duckspeaks#index'
  get '*duckspeak/*whistle/*args', to: 'bellyfeels#idea'
  get '*duckspeak/*whistle', to: 'bellyfeels#idea'
end