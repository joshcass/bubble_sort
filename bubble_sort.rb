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
    @index = 0
    array[index], array[index + 1] = array[index + 1], array[index]
  end

  def increase_index
    if index + 1 < array.length
      @index += 1
    else
      array
    end
  end

  def sorter_engine
    if diff?
      swap
      execute
    elsif
      increase_index
      execute
    end
  end

  def execute
    sorter_engine
  end

end















