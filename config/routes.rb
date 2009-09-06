ActionController::Routing::Routes.draw do |map|
  map.connect ':action', :controller => 'static'
  
  map.root :controller => 'static', :action => 'index'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
