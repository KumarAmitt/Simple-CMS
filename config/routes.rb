Rails.application.routes.draw do
 
  get 'demo/index'

  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/hello'
  get 'demo/other_hello'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
