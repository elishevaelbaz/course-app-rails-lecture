Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :destroy]
  resources :courses, only: [:index]
  resources :enrollments, only: [:index, :new, :create, :destroy]

end
