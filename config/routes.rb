Rails.application.routes.draw do
  root 'home#index'

  namespace :v1 do
    namespace :games do 
      namespace :apexlegends do 
        resources :game
        resources :players

        get '/search/:platform/:username', to: 'players#search'
        
      end
    end
  end
end
