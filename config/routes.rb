Rails.application.routes.draw do
  resources :shots
  devise_for :users, controllers: {registrations: 'registrations'}
  devise_scope :user do 
    get 'logout' => 'devise/sessions#destroy'
    get 'login' => 'devise/sessions#new'
    get 'sign_up' => 'registrations#new'
    
  end
  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
root to: 'shots#index'
end
