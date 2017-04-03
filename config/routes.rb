Rails.application.routes.draw do


  resources :duckspeaks, shallow: true do
    resources :whistles
  end

  resources :quacks

  root 'duckspeaks#index'
end