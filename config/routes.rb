Rails.application.routes.draw do
  resources :tracked_politicians
  resources :users
  resources :committee_contributions
  resources :candidate_infos
  resources :pac_candidate_linkages
  resources :pac_infos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
