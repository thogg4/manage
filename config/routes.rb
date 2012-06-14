Manage::Application.routes.draw do
  resources :sites, :roles do
    resources :users 
    resources :tasks do
      resources :comments
    end
  end
  root :to => "sites#index"
end
