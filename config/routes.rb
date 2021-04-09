Rails.application.routes.draw do
  #resources :infos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/info/index", to: "info#index"

end
