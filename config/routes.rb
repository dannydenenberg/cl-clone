Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


# info routes
  get "/scams" => "public#scams"
  get "/faqs" => "public#faqs"
  get "/safety" => "public#safety"
  get "/terms" => "public#terms"

  root to: "public#home"
end
