Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "metrics#index"

  resources :metrics do
  	collection do 
  	  get 'action_plan'
  	  post 'create_action_plan'
  	  get 'julius_cap'
  	  get 'matthew_cap'
  	  get 'tyrone_cap'
  	  get 'elmer_cap'
  	end
  end
end
