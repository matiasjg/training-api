Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trainings
      resources :plans
      resources :users, only: [:create, :show, :update]

      #custom login (something very simple)
      post 'login', to: 'users#login'

      #get started trainings by user
      get 'users/:id/trainings', to: 'users#trainings'

      #get trainings by plans
      get 'plans/:id/trainings', to: 'plans#trainings'

      #start a new plan
      post '/plans/:id/users/:userId/start', to: 'plans#start'

    end
  end

end
