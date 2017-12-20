Rails.application.routes.draw do
  # Menu
  get '/menu_index' => 'menu_items#index'
  get '/menu/new' => 'menu_items#new'
  post '/menu' => 'menu_items#create'
  get '/menu/:id' => 'menu_items#show'
  get '/menu/:id/edit' => 'menu_items#edit'
  patch '/menu/:id' => 'menu_items#update'
  delete 'menu/:id' => 'menu_items#destroy'

  # Table Sessions
  get '/table' => 'sessions#new'
  post '/table' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Order Review
  get '/review' => 'carted_drones#index'
  post '/review' => 'carted_drones#create'
  delete '/review/:id' => 'carted_drones#destroy'

  #Order Sent
  get '/order/new' => 'orders#new'
  post '/order' => 'orders#create'
  get '/order/:id' => 'orders#show'

end
