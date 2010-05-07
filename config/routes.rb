ActionController::Routing::Routes.draw do |map|
  map.resources :message
  map.connect ':action', :controller => 'static'
  
  map.root :controller => 'static', :action => 'index'
end
