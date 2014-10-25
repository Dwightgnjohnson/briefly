Rails.application.routes.draw do

  root 'briefs#index'

  get "sessions/new" => "sessions#new", as: "sign_in"
  post "sessions" => "sessions#create"
  delete "sessions" => "sessions#signout", as: "sign_out"
  get "signup" => "sessions#signup", as: :signup
  post "signup" => "sessions#create_user", as: :create_user
end
