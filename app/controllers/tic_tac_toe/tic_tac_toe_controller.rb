module TicTacToe
  class TicTacToeController < ApplicationController
    def the_game
      @game = TicTacToe::TheGame.instance
      render 'tic_tac_toe/tic_tac_toe'
    end

    def make_turn
      @game = TicTacToe::TheGame.instance
      @game.make_turn(params[:x], params[:y])
      render nothing: true
    end

    def new_game
      @game = TicTacToe::TheGame.instance
      @game.clear_field
      redirect_to action: :the_game
    end
  end
end