Rails.application.routes.draw do
  devise_for :users
	root to: "static#index"
  get "/about" => "static#about"
end
