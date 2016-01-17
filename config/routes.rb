Rails.application.routes.draw do
  resources :tasks

  resources :people do
    member do
      get 'components'
    end

    resources :tasks
  end

  resources :users
end
