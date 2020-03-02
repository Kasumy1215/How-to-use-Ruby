Rails.application.routes.draw do
  get 'order/index'
  get 'msgboard/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "hello/index"
  get "hello", to: "hello#index"
  get "hello/other"
  post "hello", to:"hello#index"
  post "hello/index"

  get "cashier/order"
  get "cashier", to: "cashier#order"
  post "cashier", to:"cashier#order"
  post "cashier/order"

  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'

  get 'order', to: 'order#index'
  post 'order', to: 'order#index'
  get 'order/index'
  post 'order/index'

  get 'order', to: 'order#select'
  post 'order', to: 'order#select'
  get 'order/select'
  post 'order/select'

  get 'order', to: 'order#check'
  post 'order', to: 'order#check'
  get 'order/check'
  post 'order/check'



end
