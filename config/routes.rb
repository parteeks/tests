Dailytask::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations", :passwords=> "passwords" }
  root :to => "application#index"
end
