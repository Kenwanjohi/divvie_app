Rails.application.routes.draw do
  root "pages#home"
  get "pages/home"
  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"
end
