Rails.application.routes.draw do


  devise_for :users
  resources :users do
    resources :jobs 
    resource :profile
  end

  
  get 'job_candidates/:job_id/new', to: 'job_candidates#new'
  post 'job_candidates/:job_id', to: 'job_candidates#create', as: 'job_candidates'
  put 'job_candidates/:id/:status', to: 'job_candidates#update', as: 'job_candidate_status'

  root 'page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
