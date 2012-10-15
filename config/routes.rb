Higgins::Application.routes.draw do
  match 'static/:action' => 'static'
  match ':controller(/:action(/:id(.:format)))'
  root to: 'static#index'
end
