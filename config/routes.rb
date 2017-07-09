Rails.application.routes.draw do
  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, only: [:show, :new, :create, :edit, :update, :destroy]
   end


   get 'about' => 'welcome#about'

  root 'welcome#index'
end
