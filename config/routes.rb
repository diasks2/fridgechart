Fridgechart::Application.routes.draw do
  resources :stocks
  resources :foods
  root to: 'static_pages#home'
end
