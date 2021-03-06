Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :countries

  resources :venues

  resources :concerts

  resources :bands

  get 'my_concerts', to: "concerts#my_concerts", as: "my_concerts"

  get "update_photo_1/:id", to: "concerts#update_photo_1", as: "update_photo_1"
  get "destroy_photo_1/:id", to: "concerts#destroy_photo_1", as: "destroy_photo_1"

  get "update_photo_2/:id", to: "concerts#update_photo_2", as: "update_photo_2"
  get "destroy_photo_2/:id", to: "concerts#destroy_photo_2", as: "destroy_photo_2"

  get "update_text_1/:id", to: "concerts#update_text_1", as: "update_text_1"
  get "destroy_text_1/:id", to: "concerts#destroy_text_1", as: "destroy_text_1"

  get "update_text_2/:id", to: "concerts#update_text_2", as: "update_text_2"
  get "destroy_text_2/:id", to: "concerts#destroy_text_2", as: "destroy_text_2"

  get "update_interview/:id", to: "concerts#update_interview", as: "update_interview"
  get "destroy_interview/:id", to: "concerts#destroy_interview", as: "destroy_interview"

  get "concerts/:id/edit_bands/", to: "concerts#edit_bands", as: "edit_bands"
  post "concerts/:id/add_band", to: "concerts#add_band", as: "add_band"

  resources :users, only:[:index, :update]

  resources :statuses
  #get "update_status/:id", to: "statuses#update", as: "update_status"
  #get "create_status", to: "statuses#create", as: "create_status"
  #get "edit_status/:id", to: "statuses#edit", as: "edit_status"

end
