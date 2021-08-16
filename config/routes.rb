Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players
        get 'players/', to: "players#index"
        get 'players/:id', to: "players#show"


        get 'tournaments/', to: "tournaments#index"
        get 'tournaments/:id', to: "tournaments#show"

        get 'teams/', to: "teams#index"
        get 'teams/:id', to: "teams#show"

      # GET /photos index display a list of all photos
      # GET /photos/new new return an HTML form for creating a new photo
      # POST  /photos create  create a new photo
      # GET /photos/:id show  display a specific photo
      # GET /photos/:id/edit  edit  return an HTML form for editing a photo
      # PUT /photos/:id update  update a specific photo
      # DELETE  /photos/:id destroy delete a specific photo
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
