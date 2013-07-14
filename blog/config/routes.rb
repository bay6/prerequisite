Blog::Application.routes.draw do
 
 
   resources :posts do
     resources :comments, :only => [:create, :index]
   end
 
    resources :comments
 
 
   # The priority is based upon order of creation:
   # first created -> highest priority.
 
 
   # You can have the root of your site routed with "root"
   # just remember to delete public/index.html.
    root :to => 'posts#index'
 
   # See how all your routes lay out with "rake routes"
