# frozen_string_literal: true

require 'test_helper'

class NamaTest < Minitest::Test
  def setup
    @output = File.read 'test/output.txt'
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nama::VERSION
  end

  def test_it_does_something_useful
    assert true # Now I checked this :)
  end

  def test_correct_interval
    Nama.config_interval 1..50
    refute_nil Nama.interval
    assert_instance_of Range, Nama.interval
  end

  def test_invalid_interval
    error = assert_raises(TypeError) { Nama.config_interval 100 }
    assert_equal error.message, 'Interval must be an Enumerator'
  end

  def test_that_extract_texts
    Nama.config_interval 1..100
    assert_output(@output) { Nama.extract_text }
  end
end
