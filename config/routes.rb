Rails.application.routes.draw do
  get  '/tic_tac_toe', to: 'tic_tac_toe/tic_tac_toe#the_game'
  get  '/new_tic_tac_toe', to: 'tic_tac_toe/tic_tac_toe#new_game'
  post '/make_turn', to: 'tic_tac_toe/tic_tac_toe#make_turn'
end