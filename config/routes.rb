CharityApp::Application.routes.draw do

  resources :users, :charities, :sessions, :donations, :charge

root 'users#index'

get '/signin' => 'sessions#new'

get '/signup' => 'users#new'

delete '/signout' => 'sessions#destroy'

# post  '/user' => 'users#create'

# post '/session' => 'sessions#create'

# get '/users/:id' => 'users#show' 

 post '/results' => 'donations#new', as: :donations_new

# get '/show' => 'donations#show'


end

#   Prefix Verb   URI Pattern                   Controller#Action
#        users GET    /users(.:format)              users#index
#              POST   /users(.:format)              users#create
#     new_user GET    /users/new(.:format)          users#new
#    edit_user GET    /users/:id/edit(.:format)     users#edit
#         user GET    /users/:id(.:format)          users#show
#              PATCH  /users/:id(.:format)          users#update
#              PUT    /users/:id(.:format)          users#update
#              DELETE /users/:id(.:format)          users#destroy
#    charities GET    /charities(.:format)          charities#index
#              POST   /charities(.:format)          charities#create
#  new_charity GET    /charities/new(.:format)      charities#new
# edit_charity GET    /charities/:id/edit(.:format) charities#edit
#      charity GET    /charities/:id(.:format)      charities#show
#              PATCH  /charities/:id(.:format)      charities#update
#              PUT    /charities/:id(.:format)      charities#update
#              DELETE /charities/:id(.:format)      charities#destroy
#     sessions GET    /sessions(.:format)           sessions#index
#              POST   /sessions(.:format)           sessions#create
#  new_session GET    /sessions/new(.:format)       sessions#new
# edit_session GET    /sessions/:id/edit(.:format)  sessions#edit
#      session GET    /sessions/:id(.:format)       sessions#show
#              PATCH  /sessions/:id(.:format)       sessions#update
#              PUT    /sessions/:id(.:format)       sessions#update
#              DELETE /sessions/:id(.:format)       sessions#destroy
#         root GET    /                             charities#index






















  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end