Rails.application.routes.draw do
  root 'games#home'
  get 'rock', to: 'games#rock'
  get 'paper', to: 'games#paper'
  get 'scissors', to: 'games#scissors'
end
