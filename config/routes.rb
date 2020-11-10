Rails.application.routes.draw do
  devise_for :accounts
  resources :posts, except: [:index]
  resources :categories, except: [:show]
  get "c/:url" => "categories#show", as: :show_category

  post "message/send" => "public#send_enquiry_to_person", as: :send_enquiry
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


# info routes
  get "/scams" => "public#scams"
  get "/faqs" => "public#faqs"
  get "/safety" => "public#safety"
  get "/terms" => "public#terms"

  # get "/dashboard" => "accounts#dashboard", as: :dashboard

  root to: "public#home"
end
