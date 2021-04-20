Rails.application.routes.draw do
  root 'contents#index' 
  resources :contents, only: %i[index]
  get 'details' => 'contents#show'
end

