class Game

  attr_accessor :board, :player_1, :player_2

  #board should collaborate through arguments with Player and Board

  @@WIN_COMBINATIONS=[
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def initialize(player_1=Players::Human.new,player_2=Players::Human.new,board)
    #initialize will be called with 3 appropriate, pre-made objects
    @player_1=player_1
    @player_2=player_2
    @board=board

  end
