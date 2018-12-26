Rails.application.routes.draw do
  root "events#index"
  resources :bars
  resources :events
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
end
