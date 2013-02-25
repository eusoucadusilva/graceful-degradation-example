GracefulDegradationExample::Application.routes.draw do
  root :to => 'products#index'

  resources :products do
    member do
      get "delete"
      delete "delete" => "products#destroy"
    end
  end
end
