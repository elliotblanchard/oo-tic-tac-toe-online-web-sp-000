class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # Top column
    [1,4,7], # Middle column
    [2,5,8], # Bottom column
    [0,4,8], # Diag A
    [6,4,2], # Diag B
  ]

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # code your input_to_index and move method here!
  def input_to_index(input)
    index = input.to_i - 1
  end

  def move(index,character)
    @board[index] = character
  end

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  #valid_move?
  def valid_move?(index)
    if ( index.between?(0,8) && position_taken?(index) == false)
      return true
    end
  end

  #turn_count
  def turn_count
    counter = 0
    @board.each do |index|
      if !(index.nil? || index == " ")
        counter += 1
      end
    end
    return counter
  end

  #current_player
  def current_player
    if turn_count % 2 == 0
      return "X"
    else
      return "O"
    end
  end

end
