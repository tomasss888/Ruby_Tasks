# frozen_string_literal: true

require 'test/unit'
require_relative 'interval_class'

# testing class
class TestInterval < Test::Unit::TestCase
  # initializes values
  def setup
    interval_correct = Interval.new(5, 15)
    interval_correct.count
    @correct = interval_correct.print_answer
    interval_incorrect = Interval.new(18, 15)
    interval_incorrect.count
    @incorrect = interval_incorrect.print_answer
  end

  def teardown
    ## Doesnt need to be destroyed
  end

  # tests multiplication
  def test_multiply
    assert_equal(10, Interval.new(0, 0).multiply(10), 'multiplication failed')
  end

  # tests with corrects inputs
  def test_answer_correct
    assert_equal('All whole numbers multiplied in a range: 80640', @correct, 'Getting correct answer failed')
  end

  # tests with incorrect inputs
  def test_answer_incorrect
    assert_equal('No range chosen', @incorrect, 'Getting incorrect answer failed')
  end
end
