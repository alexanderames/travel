Rails.application.routes.draw do
  root 'storefront#all_items'
  devise_for :users
  resources :products
  
  post 'add_to_cart'    => 'cart#add_to_cart'

  get 'view_order'      => 'cart#view_order'

  get 'checkout'        => 'cart#checkout'

  get 'all_items'       => 'storefront#all_items'

  get 'categorical'     => 'storefront#items_by_category'
  
  get 'branding'        => 'storefront#items_by_brand'

  post 'order_complete' => 'cart#order_complete'  
end