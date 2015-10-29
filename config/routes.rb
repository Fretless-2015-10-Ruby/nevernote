Rails.application.routes.draw do
  resources :notes
  root 'notes#new'
end
