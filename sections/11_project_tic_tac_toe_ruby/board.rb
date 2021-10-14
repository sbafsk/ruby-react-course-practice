# frozen_string_literal: true

# class Board
class Board
  WIDTH = 3
  HEIGHT = WIDTH

  def initialize
    @grid = Array.new(HEIGHT) { Array.new(WIDTH, :" ") }
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print "[#{cell}]"
      end
    end
    puts
  end

  def winner?(marker)
    row_win?(marker) ||
      column_win?(marker) ||
      diagonal_win?(marker)
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def column_win?(marker)
    (0...WIDTH).any? do |column|
      @grid.all? do |row|
        row[column] == marker
      end
    end
  end

  def diagonal_win?(marker)
    # [-1, 1].any? do |sign|
    [
      (->(i) { i }),
      (->(i) { -(i + 1) })
    ].any? do |proc|
      (0...WIDTH).all? do |i|
        # second_index = sign.positive? ? i : sign * (i + 1)
        # @grid[i][second_index] == marker
        @grid[i][proc.call(i)] == marker
      end
    end
  end

  def [](y, x)
    @grid[y][x]
  end

  def []=(y, x, something)
    if @grid[y][x] == :" " && [:x, :o].include?(something)
      @grid[y][x] = something
    else
      false
    end
  end
end

def print_and_check
  @b.print_grid
  puts "Row with all o? : #{@b.row_win?(:o)}"
  puts "Row with all x? : #{@b.row_win?(:x)}"
  puts "Column with all o? : #{@b.column_win?(:o)}"
  puts "Column with all x? : #{@b.column_win?(:x)}"
  puts "Diagonal with all o? : #{@b.diagonal_win?(:o)}"
  puts "Diagonal with all x? : #{@b.diagonal_win?(:x)}"
end

@b = Board.new

# @b.grid[2][0] = :o
# @b.grid[2][1] = :o
# @b.grid[2][2] = :o
# print_and_check

# @b.grid[2][1] = :x
# @b.grid[1][1] = :x
# @b.grid[0][1] = :x
# print_and_check

# @b[0, 0] = :x
# @b[1, 1] = :x
# @b[2, 2] = :x
# print_and_check

# @b[0, 2] = :o
# @b[1, 1] = :o
# @b[2, 0] = :o
# print_and_check
