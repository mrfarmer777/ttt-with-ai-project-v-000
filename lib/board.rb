require 'pry'

class Board
  attr_accessor :cells

  def initialize
    @cells = self.reset!
  end

  def reset!
    @cells=Array.new(9," ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} \n-----------\n #{@cells[3]} | #{@cells[4]} | #{@cells[5]} \n-----------\n #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def full?
    @cells.all? {|cell| cell=="X" or cell=="O"}
  end

  def turn_count
    @cells.count {|cell| cell=="X" || cell=="O"}
  end

  def position(pos)
    @cells[pos.to_i]
  end

  def taken?(pos)
    @cells[pos]==" "? false : true
  end

  def valid_move?(pos)
    (pos.between?(0,10) && !taken?(pos))
  end

  def update(pos,player)
    @cells[pos]=player.token
  end

end
