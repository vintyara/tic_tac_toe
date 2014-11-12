Rails.application.routes.draw do
  get  '/tic_tac_toe', to: 'tic_tac_toe/tic_tac_toe#the_game'#, as: 'tic_tac_toe_game'
  post '/make_turn', to: 'tic_tac_toe/tic_tac_toe#make_turn'#, as: 'tic_tac_toe_make_turn'
end