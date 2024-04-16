Rails.application.routes.draw do
  resources :lessons
  resources :schedules
  resources :registrations
  resources :child_registrations
  resources :leaders_registrations
  resources :assistant_registrations
  resources :teacher_registrations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  get '/cadastro_professores', to: 'teacher_registrations#index'
  # Defines the root path route ("/")
  # root "posts#index"
end
