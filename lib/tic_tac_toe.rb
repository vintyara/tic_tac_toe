module TicTacToe

  class TheGame
    include Singleton

    def initialize
      @game_symbols = ['x', '0']
      clear_field
      #@game_field   = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
      @player_sign  = 'x'
    end

    def clear_field
      @game_field = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    end

    def game_field
      @game_field
    end

    def player_sign
      @player_sign
    end

    def make_turn(x, y)
      @game_field[x.to_i][y.to_i] = @player_sign
      @player_sign = (@game_symbols - [@player_sign.downcase]).first
    end
  end
end

require 'tic_tac_toe/engine'