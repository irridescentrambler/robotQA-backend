Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :robots do
    member do
      post 'extinguish'
      post 'ship'
    end

    collection do
      post 'recycle'
    end
  end
end
