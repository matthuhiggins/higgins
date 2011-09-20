Higgins::Application.routes.draw do
  resources :lists do
    resources :posts
  end

  match 'static/:action' => 'static'
  root to: 'static#index'
end
