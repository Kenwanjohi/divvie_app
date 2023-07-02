Rails.application.routes.draw do
  root "pages#landing"
  get "pages/landing"
  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "sign_out", to: "sessions#destroy"
end
