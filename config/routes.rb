Rails.application.routes.draw do
  resources :users
  resources :questions do
    resources :answers
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
