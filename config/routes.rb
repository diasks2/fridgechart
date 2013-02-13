Fridgechart::Application.routes.draw do
  resources :foods
  root to: 'static_pages#home'
end
