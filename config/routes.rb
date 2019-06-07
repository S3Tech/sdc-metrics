Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "metrics#index"

  resources :metrics do
  	collection do 
  	  get 'action_plan'
  	end
  end
end
