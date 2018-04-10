Rails.application.routes.draw do

  

  get 'students/signup'

  get 'welcome/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#home"

  resources :students
  get '/signup', to: 'students#signup'
end
