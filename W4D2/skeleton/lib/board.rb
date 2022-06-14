
class Board
  attr_accessor :cups, :name1, :name2


  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    @name1 = name1
    @name2 = name2
    place_stones
  end


  def place_stones
    (0..5).each {|i| 4.times { @cups[i] << :stone }}   
    (7..12).each { |i| 4.times { @cups[i] << :stone }}
  end


  def valid_move?(start_pos)
   raise 'Invalid starting cup' if start_pos < 0 || start_pos >13
   raise 'Starting cup is empty'if @cups[start_pos].empty? 
  end


  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    next_pos = start_pos % @cups.length
   
    until stones.empty?
      # debugger
      next_pos += 1
      if next_pos == 6 && current_player_name == @name1
        @cups[6] << stones.shift
      elsif next_pos == 13 && current_player_name == @name2
        @cups[13] << stones.shift
      else
        @cups[next_pos] << stones.shift
      end
    end
    render
    next_turn(next_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

    if @cups[ending_cup_idx].empty?
      return :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13 
      return :prompt
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? {|i|@cups[i].empty?} || (7..12).all?{|i|@cups[i].empty?}
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return @name1 if @cups[6].length > @cups[13].length
    return @name2 if @cups[6].length < @cups[13].length
  end

end
