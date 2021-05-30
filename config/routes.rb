Rails.application.routes.draw do
  resources :portfolio_infos
  get 'page/home'
  get 'page/about'
  get 'page/contact'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
