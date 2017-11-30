Rails.application.routes.draw do
  get 'people/index'
  root 'people#index'
  post 'people' => 'people#create'
  get 'people/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
