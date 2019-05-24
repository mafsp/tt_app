Rails.application.routes.draw do
#  get 'tts/index'
#  resources :tts
  resources :tts do
    collection do
      post :confirm
    end
  end
end
