NerfApp::Application.routes.draw do

  resources :players

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  root to: "players#index"
end
