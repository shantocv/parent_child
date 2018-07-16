Rails.application.routes.draw do
  resources :moms do
    resources :kids
  end
end
