NerfApp::Application.routes.draw do

  root to: "players#index"

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
