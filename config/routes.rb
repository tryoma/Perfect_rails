Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback' => "sessions#create"
  delete '/logout' => "sessions#destroy", as: :logout

  resource :retirements
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :tickets
  end
end
