Higgins::Application.routes.draw do
  match ':action' => 'static'
  root :to => 'static#index'
end
