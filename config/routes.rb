Rails.application.routes.draw do
  resources :todos do
    member do
      get "check", to: 'todos#check'
      
    end
  end
  get "completed", to:"todos#completed"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "todos#index"
end
