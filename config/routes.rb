Remember::Application.routes.draw do
  resources :siteadmins
  resources :authentication
  resources :foods do
     get :edit, :on => :member
     get :update, :on => :member
     #get :delete, :on => :member
     resources :foods

  end

  root :to => 'static_pages#home'

  match '/about', to: 'static_pages#about',   via: 'get'
  match '/games', to: 'static_pages#game_room', via: 'get'
  match '/admin', to: 'authentication#sign_in', via: 'get'
  match '/signed_out', to: 'authentication#signed_out'
  match '/menu', to: 'foods#menu', via: 'get'
  match '/edit_menu', to: 'foods#edit_menu', via: 'get'
  match '/new_item', to: 'foods#new'
  match '/edit', to: 'foods#edit', via: 'get'
  #match '/delete', 'foods#delete', via: 'delete'
  #post 'delete' => 'foods#delete'
  post "sign_in" => "authentication#login"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
