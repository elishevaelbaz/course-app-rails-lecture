Rails.application.routes.draw do
  # get "/students", to: "students#index", as: "students" #index
  resources :students, only: [:index, :new, :create, :show]
  resources :enrollments, only: [:index, :new, :create]

end
