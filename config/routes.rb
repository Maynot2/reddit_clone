Rails.application.routes.draw do

  get  'stories'       => 'stories#index'
  get  'stories/new'   => 'stories#new',    as: 'new_story'
  post 'stories'       => 'stories#create'

  # resources :stories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
