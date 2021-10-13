# frozen_string_literal: true

# 67.
# - A board (instance of the Board class)  "has-a" 2-dimensional array
# saved in the @grid variable.
# - The Board class could easily be modified to create a 2d grid of any size.
# - The "cells" on the board are symbols, but i could also have used strings,
# or defined a Cell class which would have a string or symbol value.
#
# 68.
# - My solution involved nested iterators blocks.
# - We go throught each row, then each cell inside the row.
# - we use #any? (row) and #all? (cells)
#
# 69.
# - The only big difference between checking rows vs. columns is that
# we can't iterate over the colums directly, so I used a range
# from (0...WIDTH) to iterate over the indexes.
# - The range uses three dots to exclude WIDTH(3) because the lenght
# of an array is always one more than the last index (indexes start at 0) lol

# class Board
class Board
  WIDTH = 3
  HEIGHT = WIDTH

  attr_accessor :grid

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
    return true if (0...WIDTH).all? do |i|
      @grid[i][i] == marker
    end

    return true if (0...WIDTH).all? do |i|
      @grid[i][-(i + 1)] == marker
    end

    false
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

@b.grid[2][0] = :o
@b.grid[2][1] = :o
@b.grid[2][2] = :o
print_and_check

@b.grid[2][1] = :x
@b.grid[1][1] = :x
@b.grid[0][1] = :x
print_and_check

@b.grid[0][0] = :x
@b.grid[1][1] = :x
@b.grid[2][2] = :x
print_and_check
