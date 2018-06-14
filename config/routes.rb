Rails.application.routes.draw do

  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/emails/create", as: :create_email
  get "emails", controller: "emails/index"

  # _path -> ruta relative, _url -> ruta absoluta

  authenticated :user do 
  	root 'welcome#index'
  end

  unauthenticated :user do
  	devise_scope :user do
  		root "welcome#unregistered"
  	end
  end

end
