Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tracked_politicians, only: [:index, :show, :create]
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :committee_contributions, only: [:index, :show]
      resources :candidate_infos, only: [:index, :show]
      resources :pac_candidate_linkages
      resources :pac_infos, only: [:index, :show]
      get '/parsed_contribution_info', to: 'committee_contributions#parsed_contribution_info'
      post '/candidate_search_district_number_and_state', to: 'candidate_infos#candidate_search_district_number_and_state'
      get '/parsed_pac_info', to: 'pac_infos#parsed_pac_info'
    end
  end
  post '/signup', to: 'user#create'
   post '/login', to: 'token#create' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
