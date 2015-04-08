gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_a_single_swap
  sort = BubbleSort.new([2, 1])
    assert_equal [1, 2], sort.swap
  end

  def test_it_can_tell_the_difference
    sort = BubbleSort.new([2,1])
    assert sort
  end

  def test_it_can_increase_the_index_by_1
    sort = BubbleSort.new([2, 1])
    assert_equal 1, sort.increase_index
  end

  def test_a_single_pass
    sort = BubbleSort.new([2, 1])
    assert_equal [1, 2], sort.execute
  end

  def test_if_it_knows_when_it_is_done
    sort = BubbleSort.new([1, 2])
    assert_equal "Numbers sorted:\n[1, 2]", sort.execute
  end

  def test_if_it_can_sort_a_longer_array

  end

end
