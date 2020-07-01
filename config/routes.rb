Rails.application.routes.draw do
  root "onepieces#index"
  resources :onepieces
end
