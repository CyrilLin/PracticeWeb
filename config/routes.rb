Rails.application.routes.draw do
  devise_for :users, path: 'account', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'account/logout', to: 'devise/sessions#destroy'
    get 'account/setting', to: 'devise/registrations#edit'
  end
  root to:'home#index'

  get 'account/key', to: 'account#key'
  get 'index', to: 'home#index'
  get '/', to: 'home#index'

  resources :languages
end
