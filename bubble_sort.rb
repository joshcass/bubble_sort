class BubbleSort
  attr_reader :array, :index, :swapped

  def initialize(array)
    @array = array
    @index = 0
    @swapped = 0
  end

  def diff?
    array[index] > array[index + 1]
  end

  def swapped?
    swapped >= 1
  end

  def swap
    array[index], array[index + 1] = array[index + 1], array[index]
    @swapped += 1
    array
  end

  def increase_index
    if index < array.length - 1
      @index += 1
    end
  end

  def sorter_engine
    while @swapped < 1
      if diff?
        swap
        increase_index
      elsif  swapped?
          @swapped = 0
          @index = 0
      else
        increase_index
      end
    end
    array
  end
end

