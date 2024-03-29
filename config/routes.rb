Rails.application.routes.draw do
  
 get 'home/index'

 get 'pageterms' => 'pages#pageterms'
 get 'pageabout' => 'pages#pageabout'
# get '/terms' => 'terms#index' - Это я создада два отдельных контроллера)))0
#get '/about' => 'about#index'
 
 resource :contacts, only: [:new, :create], path_names: { :new => ''}
 resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
