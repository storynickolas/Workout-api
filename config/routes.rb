Rails.application.routes.draw do
  resources :workouts, only: [:index, :show, :create, :destroy, :update]
  resources :exercises, only: [:index]
  resources :users, only: [:show, :index]


  resources :workout_days, only: [:index, :show, :create, :destroy]

  resources :workout_exercises, only: [:index, :show, :create, :update]


  resources :schedules, only: [:show]
  # resources :saved_workout, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # route to test your configuration

  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"

  post "/saved_workouts", to: "saved_workout#create"
  get "/saved_workouts", to: "saved_workout#index"
  get "/saved_workouts/:id", to: "saved_workout#show"
  delete "/saved_workouts/:id", to: "saved_workout#destroy"

  get "/user_workouts/:id", to: "workouts#userWorkouts"

  # resources :users, only: [destroy]

end
