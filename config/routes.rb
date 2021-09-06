Rails.application.routes.draw do
  resources :events
  devise_for :users
	root to: "static#index"
  get "/about" => "static#about"
end
