Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index"
  get '/registered' => 'welcome#registered'

  resources :food_places, only: [:index, :show]



  resources :user, only: [:show] do
    resources :preferences, only: [:show, :update]

    resources :days, only: [] do
      collection do
        get :today
        post :vote
      end
    end
  end

end
