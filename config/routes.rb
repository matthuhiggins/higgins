ActionController::Routing::Routes.draw do |map|
  map.connect ':action', :controller => 'static'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
