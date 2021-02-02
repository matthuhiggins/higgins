Rails.application.routes.draw do
  get 'static/:action' => 'static'
  root to: 'static#index'
end
