Rails.application.routes.draw do

  resources :messengers
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign_up' }
  root to: "pages#home"
  
end
