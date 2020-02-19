Rails.application.routes.draw do
  get 'squads/index'
  get 'persons/index'
  get 'comicbooks/index'
  get 'comicbooks/create'
  get 'comicbooks/new'
  get 'comicbooks/edit'
  get 'comicbooks/update'
  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'application#welcome'

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
 # New naming conventions
 
resources :comicbooks, only: %i[index new create edit update destroy]
resources :persons do
  resources :comicbooks, only: [:index, :new]
end

resources :squads
 
 
#  # Old naming conventions
#     get 'heros/index'
#     get 'heros/show'
#     get 'heros/new'
#     get 'heros/create'
  
#     resources :heros
#     resources :comics

end
