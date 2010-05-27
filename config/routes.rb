ActionController::Routing::Routes.draw do |map|
  map.connect ':action', :controller => 'static'
  map.root :controller => 'static', :action => 'index'
end
