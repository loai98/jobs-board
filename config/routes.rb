Rails.application.routes.draw do
  get 'jobs', to: 'jobs#index'
  post "jobs/create"
  get 'jobs/new'
  delete 'jobs/:id/destroy' => "jobs#destroy"
  put 'jobs/:id/edit', to: 'jobs#edit'
  post 'jobs/:id/apply', to: 'jobs#apply'
  get 'jobs/:id', to: 'jobs#show'

  get 'jobs/applications', to: 'jobs#applications'
  get 'jobs/applications/:id', to: 'jobs#application'
  get 'jobs/:id/applications', to: 'jobs#jobApplication'



  devise_scope :user do
    get "users/:id/applications" => "users/sessions#applications"
    end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "application#index"
end
