Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :urls

  root 'urls#index'

  get "/:short_url", to: "urls#sweejin", as: "sj"

end
