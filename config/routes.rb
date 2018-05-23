Rails.application.routes.draw do

  post 'edit_user' => 'admin#edit_user'

  get 'users' => 'admin#users'

  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'edit_line_item' =>'cart#edit_line_item'

  get 'delete_line_item' => 'cart#delete_line_item'

  post 'order_complete' => 'cart#order_complete'

  devise_for :users
  resources :user

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category' 

  get 'branding' => 'storefront#items_by_brand'
  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
