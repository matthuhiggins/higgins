Higgins::Application.routes.draw do
  resources :lists
  # match ':action' => 'static'
  root to: 'static#index'
end
