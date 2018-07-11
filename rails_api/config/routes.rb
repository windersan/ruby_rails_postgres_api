Rails.application.routes.draw do
  resources :books
  resources :messages, except: [:update, :show]
    resources :transactions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
