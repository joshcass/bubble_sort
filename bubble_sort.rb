class BubbleSort
  attr_reader :array
  attr_reader :index

  def initialize(array)
    @array = array
    @index = 0
  end

  def diff?
    if array[index] > array[index + 1]
      true
    end
  end

  def swap
    array[index], array[index + 1] = array[index + 1], array[index]
  end

  def increase_index
    if index + 1 < array.length
      index + 1
    end
  end

  def done
    puts "Numbers sorted:\n #{array}"
  end

  def execute

    if diff?
      swap
      increase_index
      array
    else
      puts "Numbers sorted:\n #{array}"
    end
  end



end


















# sequence = [5, 4, 3, 2, 1, 0]
#
# @swaps = 0
#
# num = 0
#
# while num + 1 < sequence.length
#  if sequence[num] > sequence[num + 1]
#  sequence[num], sequence[num + 1] = sequence[num + 1], sequence[num]
#    @swaps += 1
#    num = 0
#  else
#    num += 1
#  end
# result = sequence
# end
#
#
#
# puts "Final result: #{result}"
# puts "Swaps: #{@swaps}"
