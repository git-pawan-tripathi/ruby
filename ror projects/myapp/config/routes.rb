 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
#  get "/",to: "main#index"
 root to: "main#index"

 get "password",to: "passwords#edit",as: :edit_password
 patch "password",to: "passwords#update"

 get "/about-us",to: "about#index", as: 'about'

 get "/sign_up",to: "registration#new"
 post "/sign_up",to: "registration#create"

 get "/sign_in",to: "session#new"
 post "/sign_in",to: "session#create" 
 delete "/logout",to: "session#destroy"
 
 get "password/reset",to: "password_reset#new"
 post "password/reset",to: "password_reset#create"

 get "password/reset/edit",to: "password_reset#edit"
 patch "password/reset/edit",to: "password_reset#update"
end
