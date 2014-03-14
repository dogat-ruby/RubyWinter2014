class TicTacToe
  attr_accessor :player, :player_symbol, :currentplayer, :computer_symbol, :winner, :board, :over

  SYMBOLS = [:O, :X]

  def initialize(currentplayer = nil, symbol = nil)
    @over = false
    @winner = :none
    @player = "Player"

    if symbol != nil then
      @player_symbol = symbol
      @computer_symbol = (symbol == :O ? :X : :O)
    else
      @player_symbol = SYMBOLS[0]
      @computer_symbol = SYMBOLS[1]
    end

    @board = {
        :A1 => " ", :A2 => " ", :A3 => " ",
        :B1 => " ", :B2 => " ", :B3 => " ",
        :C1 => " ", :C2 => " ", :C3 => " "}
  end

  def welcome_player
    @player = "Renee"
    @currentplayer = "Renee"
    "Welcome #{@player}"
  end

 def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def current_player
    if @current == @player
      @current = "Computer"
    else
      @current = @player
    end
  end

  def current_state
    puts("#{@board}")
    @board.values
  end

  def player_move
    set_position(get_player_move.to_sym, @player_symbol)
    @currentplayer = :computer
    get_player_move.to_sym
  end

  def get_player_move
    @player_move = gets().chomp!
  end

  def computer_move
    @pick = open_spots.sample()
    puts("#{@pick}")
    set_position(@pick, @computer_symbol)
    @currentplayer = :player
    @pick
  end

  def open_spots
    @board.select{|k,v| v == " "}.keys
  end

  def spots_open?
    !open_spots.empty?
  end

  def set_position(position, symbol)
    if(@board[position] != " ") then
      @random_move = open_spots.sample()
      puts("#{@random_move}")
      @board[@random_move] = symbol.to_s
    else
      @board[position] = symbol.to_s
    end
  end

  def determine_winner
    ["A","B","C","1","2","3"].each do |v|
      if check_row(@player_symbol, v) then
        @winner = :player
      end
    end
    if check_diagonal(@player_symbol) then
      @winner = :player
    end

    ["A","B","C","1","2","3"].each do |v|
      if check_row(@computer_symbol, v) then
        @winner = :computer
        @over = true
      end
    end
    if check_diagonal(@computer_symbol) then
      @winner = :computer
    end
    if @winner != :none then
      @over = true
    end

  end

  def check_row(symbol, row)
    @board.select{|k,v| v==symbol.to_s}.keys.join.count(row) == 3
  end

  def check_diagonal(symbol)
    (@board[:A1].to_s + @board[:B2].to_s + @board[:C3].to_s).count(symbol.to_s) == 3 || (@board[:A3].to_s + @board[:B2].to_s + @board[:C1].to_s).count(symbol.to_s) == 3
  end

  def over?
    @over
  end

  def player_won?
    @winner == :player
  end

  def computer_won?
    @winner == :computer
  end

  def draw? 
   (@over == true) and (@winner == false)
  end

  @game = TicTacToe.new
  puts @game.welcome_player

until @game.over?
  case @game.current_player
  when "Computer"
    @game.computer_move
  when @game.player
    @game.indicate_player_turn
    @game.player_move
  end
  puts @game.current_state
  @game.determine_winner
end

puts "I Won" if @game.computer_won?
puts "You Won" if @game.player_won?
puts "Draw" if @game.draw?
end

