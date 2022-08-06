Rails.application.routes.draw do
  get 'jobs', to: 'jobs#index'
  post "jobs/create", as: :job_post
  get 'jobs/new'
  delete 'jobs/:id/destroy' => "jobs#destroy"
  get 'jobs/:id', to: 'jobs#show'
  get 'jobs/:id/apply', to: 'jobs#apply', as: :apply

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "application#index"
end
