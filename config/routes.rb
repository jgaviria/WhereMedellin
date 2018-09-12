Rails.application.routes.draw do
  root "pages#index"

  resources :events

  devise_for :users, :controllers => {:registrations => "registrations"}
end
