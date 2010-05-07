ActionController::Routing::Routes.draw do |map|
  map.resources :message
  map.connect 'chat', :controller => 'chat'
  map.connect ':action', :controller => 'static'
  
  map.root :controller => 'static', :action => 'index'
end
