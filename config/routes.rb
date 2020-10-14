Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tracked_politicians, only: [:index, :show, :create]
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :committee_contributions, only: [:index, :show]
      resources :candidate_infos, only: [:index, :show]
      resources :pac_candidate_linkages
      resources :pac_infos, only: [:index, :show]
      post '/signup', to: 'user#create'
      get '/parsed_contribution_info', to: 'committee_contribution#parsed_contribution_info'
      get '/parsed_candidate_info', to: 'candidate_info#parsed_candidate_info'
      get '/parsed_pac_info', to: 'pac_info#parsed_pac_info'
    end
  end
   post '/login', to: 'token#create' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
