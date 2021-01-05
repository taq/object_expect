require 'test_helper'

class ObjectExpectTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ObjectExpect::VERSION
  end

  def test_it_wont_raise
    value = 1
    assert_equal value, value.expect('Should have a value')
  end

  def test_it_must_raise_without_message
    value = nil
    error = assert_raises ObjectExpect::Error do
      value.expect
    end
    assert_equal 'Null value', error.message
  end

  def test_it_must_raise_with_message
    value   = nil
    message = 'Should raise an exception'
    error   = assert_raises ObjectExpect::Error do
      value.expect(message)
    end
    assert_equal message, error.message
  end
end
