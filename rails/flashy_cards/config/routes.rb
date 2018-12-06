Rails.application.routes.draw do
  resources :rounds
  resources :guesses
  resources :decks
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
