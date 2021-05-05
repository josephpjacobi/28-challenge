Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/products'
  post 'welcome/success'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
end
