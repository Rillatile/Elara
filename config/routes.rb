Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :users, only: [:create]
      post '/sign_in', to: 'users#sign_in'
    end
  end
end
