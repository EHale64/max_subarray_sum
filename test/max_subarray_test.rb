require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/max_subarray'
require 'json'
require 'pry'

class MaxSubarrayTest < MiniTest::Test
    def setup
        @max_sub = MaxSubarray.new
    end

    def test_max_finder
        assert_equal 0, @max_sub.find_max([])
        assert_equal 6, @max_sub.find_max([-2, 1, -3, 4, -1, 2, 1, -5, 4])
        assert_equal 11, @max_sub.find_max([11])
        assert_equal 44, @max_sub.find_max([11, 11, 11, 11])
        assert_equal 0, @max_sub.find_max([-32])
        assert_equal 0, @max_sub.find_max([-32, -32])
        assert_equal 12, @max_sub.find_max([-2, 1, -7, 4, -10, 2, 1, 5, 4])
    end
end