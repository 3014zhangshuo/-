Rails.application.routes.draw do
  resources :abouts
  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
      get 'about'
    end
  end
end
