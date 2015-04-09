class BubbleSort
  attr_reader :array, :index

  def initialize(array)
    @array = array
    @index = 0
  end

  def diff?
    array[index] > array[index + 1]
  end

  def swap
    array[index], array[index + 1] = array[index + 1], array[index]
  end

  def increase_index
      @index += 1
  end

  def sorter_engine
    while index < array.length - 1
      if diff?
        swap
        @index = 0
      else
        increase_index
      end
    end
    array
  end
end






# NON OOP WAY

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












