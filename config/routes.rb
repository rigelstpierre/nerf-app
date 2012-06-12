NerfApp::Application.routes.draw do

  root to: "players#index"

  match "/auth/:provider/callback" => "sessions#create"
end
