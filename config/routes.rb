Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'departments#index'

  #this way is hard to keep track of objects and creates long urls
  # resources :departments do
  #   resources :items do
  #     resources :comments
  #   end
  # end

  resources :departments do
    resources :items
  end
  resources :items do
    resources :comments
  end
end
