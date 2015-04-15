#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming_difference'

# Test data version:

class HammingDifferenceTest < Minitest::Test
  def test_identical_strands
    assert_equal 0, HammingDifference.compute_difference('A', 'A')
  end

  def test_long_identical_strands
    # skip
    assert_equal 0, HammingDifference.compute_difference('GGACTGA', 'GGACTGA')
  end

  def test_complete_distance_in_single_nucleotide_strands
    # skip
    assert_equal 1, HammingDifference.compute_difference('A', 'G')
  end

  def test_complete_distance_in_small_strands
    # skip
    assert_equal 2, HammingDifference.compute_difference('AG', 'CT')
  end

  def test_small_distance_in_small_strands
    # skip
    assert_equal 1, HammingDifference.compute_difference('AT', 'CT')
  end

  def test_small_distance
    # skip
    assert_equal 1, HammingDifference.compute_difference('GGACG', 'GGTCG')
  end

  def test_small_distance_in_long_strands
    # skip
    assert_equal 2, HammingDifference.compute_difference('ACCAGGG', 'ACTATGG')
  end

  def test_non_unique_character_in_first_strand
    # skip
    assert_equal 1, HammingDifference.compute_difference('AGA', 'AGG')
  end

  def test_non_unique_character_in_second_strand
    # skip
    assert_equal 1, HammingDifference.compute_difference('AGG', 'AGA')
  end

  def test_large_distance
    # skip
    assert_equal 4, HammingDifference.compute_difference('GATACA', 'GCATAA')
  end

  def test_large_distance_in_off_by_one_strand
    # skip
    assert_equal 9, HammingDifference.compute_difference('GGACGGATTCTG', 'AGGACGGATTCT')
  end

  def test_empty_strands
    # skip
    assert_equal 0, HammingDifference.compute_difference('', '')
  end

end