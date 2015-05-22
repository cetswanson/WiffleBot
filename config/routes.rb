Rails.application.routes.draw do

  resources :topics do
    resources :replies
  end

  resource :session, :only => [:new, :create, :destroy]

  root 'welcome#index'

end
