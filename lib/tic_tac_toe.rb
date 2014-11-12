module TicTacToe

  class TheGame
    include Singleton

    def initialize
      @board_size   = 3
      @game_symbols = ['x', '0']
      clear_field
      @player_sign    = 'x'
    end

    def clear_field
      @game_field = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
      @winner_player  = nil
    end

    def winner_player
      @winner_player
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
      check_winner
    end

    # TODO harcoded for 3x3 field, new refactor for dynamic game field
    def check_winner
      # check vertical
      @board_size.times { |row| @winner_player = @game_field[row].first and return if @game_field[row].uniq.count.eql?(1) }

      # check horizontal
      @board_size.times do |col|
        column = []
        @board_size.times do |row|
          column << @game_field[row][col]
        end
        @winner_player = column.first and return if column.uniq.count.eql?(1)
      end

      # check vertical
      column = []
      @board_size.times { |h| column << @game_field[h][h] }
      @winner_player = column.first and return if column.uniq.count.eql?(1)


      row = 0
      column = []
      (@board_size-1).downto(0) do |col|
        column << @game_field[row][col]
        row += 1
      end
      @winner_player = column.first and return if column.uniq.count.eql?(1)
    end
  end
end

require 'tic_tac_toe/engine'