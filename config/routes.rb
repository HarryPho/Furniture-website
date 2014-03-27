ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.resources :supplies
  map.resources :does_business_ins
  map.resources :employee_skills
  map.resources :skills
  map.resources :testimonials
  map.resources :uses
  map.resources :works_ins
  map.resources :employees
  map.resources :produced_ins
  map.resources :work_centers
  map.resources :raw_materials
  map.resources :vendors
  map.resources :order_lines
  map.resources :products
  map.resources :product_lines
  map.resources :orders
  map.resources :customers
  map.resources :sales_people
  map.resources :territories
  map.resources :reports
  map.resources :sessions, :only => [:new, :create, :destroy]
  map.signin  '/signin',  :controller => 'sessions', :action => 'new'
  map.signout '/signout', :controller => 'sessions', :action => 'destroy'

#<!-- ======================== START DEFAULT ROUTES ======================== -->
map.root :controller => 'static', :action => 'home'
#<!-- ========================= END DEFAULT ROUTES ========================= -->
#
#<!-- ======================= START ACCOUTION ROUTES ======================= -->
map.cart '/cart', :controller => 'account', :action => 'cart'
map.myaccount '/myaccount', :controller => 'account', :action => 'myaccount'
map.signin  '/signin',  :controller => 'account', :action => 'signin'
map.reports  '/reports',  :controller => 'account', :action => 'reports'
map.register  '/register',  :controller => 'account', :action => 'register'
map.forgotpass  '/forgotpass',  :controller => 'account', :action => 'forgotpass'
#<!-- ======================== END ACCOUTION ROUTES ======================== -->
#
#<!-- ======================= START LIVE CHAT ROUTES======================== -->
map.chat '/chat', :controller => 'livechat', :action => 'chat'
#<!-- ======================= END LIVE CHAT ROUTES ========================= -->
#
#<!-- ======================= START PRODUCT ROUTES ========================= -->
map.bathroom '/bathroom', :controller => 'products', :action => 'bathroom'
map.beedroom '/beedroom', :controller => 'products', :action => 'beedroom'
map.kitchen '/kitchen', :controller => 'products', :action => 'kitchen'
map.livingroom '/livingroom', :controller => 'products', :action => 'livingroom'
map.mattress '/mattress', :controller => 'products', :action => 'mattress'
map.office '/office', :controller => 'products', :action => 'office'
map.outdoor '/outdoor', :controller => 'products', :action => 'outdoor'
#<!-- ========================= END PRODUCT ROUTES ========================= -->
#
#<!-- ======================== START STATIC ROUTES ========================= -->
map.about '/about', :controller => 'static', :action => 'about'
map.home '/home', :controller => 'static', :action => 'home'
map.faq '/faq', :controller => 'static', :action => 'faq'
map.customer_service '/customer_service', :controller => 'static', :action => 'customer_service'
map.contact_us '/contact_us', :controller => 'static', :action => 'contact_us'
#<!-- ========================= END STATIC ROUTES=========================== -->
#
#<!-- ============================= REPORT ROUTES ============================= -->

  #
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
