Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :notes

  resources :users, only: :create
  get 'sign_up' => 'users#new'

  resources :sessions, only: :create
  get     'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :notes, except: [:new, :edit]
    end
  end

  root 'notes#new'
end
