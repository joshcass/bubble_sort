gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_a_single_swap
    sort = BubbleSort.new([2, 1])
    assert_equal [1, 2], sort.swap
  end

  def test_it_can_tell_the_difference_between_larger_and_smaller_number
    sort = BubbleSort.new([2,1])
    assert sort
  end

  def test_it_can_increase_the_index_by_one
    sort = BubbleSort.new([2, 1])
    assert_equal 1, sort.increase_index
  end

  def test_a_single_pass
    sort = BubbleSort.new([6, 4])
    assert_equal [4, 6], sort.sorter_engine
  end

  def test_if_it_can_sort_a_longer_array
    sort = BubbleSort.new([5, 4, 3, 2, 1, 0])
    assert_equal [0, 1, 2, 3, 4, 5], sort.sorter_engine
  end

end
