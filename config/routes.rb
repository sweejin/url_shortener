Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'urls#index'

  resources :urls

  get "/:short_url", to: "urls#sweejin", as: "sj"
  
end
